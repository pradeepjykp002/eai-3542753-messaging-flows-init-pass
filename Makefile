TOFU := tofu
DEV_DIRS  := $(shell find ./environments/dev  -name "*.tf" -not -path "*/.terraform/*" -exec dirname {} \; | sort -u)
TEST_DIRS := $(shell find ./environments/test -name "*.tf" -not -path "*/.terraform/*" -exec dirname {} \; | sort -u)
ACCOUNT_SETUP_DIR := ./modules/account-setup
DATAFLOWS_DIR     := ./modules/dataflows

PLUGIN_CACHE_DIR := $(HOME)/.terraform.d/plugin-cache
TOFU_ENV := TF_PLUGIN_CACHE_DIR=$(PLUGIN_CACHE_DIR) TF_LOG=DEBUG TF_REGISTRY_CLIENT_TIMEOUT=30

.PHONY: fmt validate validate-dev test init init-dev plan-dev plan-test apply-dev bootstrap-phase1-dev boostrap-phase2-dev upgrade

TF_ENVIRONMENT              := -target=module.confluent_environment
TF_ENTERPRISE_KAFKA_CLUSTER := -target=module.enterprise_kafka_cluster

# The dataflows provider needs the cluster's REST endpoint and API keys, which
# can't exist until the cluster does. Bootstrap creates only the platform.
BOOTSTRAP_PHASE1_TARGETS := $(TF_ENVIRONMENT)
BOOTSTRAP_PHASE2_TARGETS := $(TF_ENTERPRISE_KAFKA_CLUSTER)
BOOTSTRAP_PHASE3_TARGETS := -target=module.account_setup

# Phase 4 runs as the env admin, which cannot read environment-scoped role
# bindings. Refreshing account_setup with those credentials makes the provider
# report them as absent, so OpenTofu silently drops them from state and then
# fails 403 trying to recreate them. Targeting dataflows keeps account_setup
# out of the refresh entirely; it is phase 3's to own.
APPLY_TARGETS := -target=module.dataflows

$(PLUGIN_CACHE_DIR):
	mkdir -p $(PLUGIN_CACHE_DIR)

init-dev: $(PLUGIN_CACHE_DIR)
	@for dir in $(DEV_DIRS) $(TEST_DIRS); do \
		echo "=== init: $$dir ==="; \
		$(TOFU_ENV) $(TOFU) -chdir=$$dir init -upgrade -backend=false -input=false || exit 1; \
	done

upgrade: $(PLUGIN_CACHE_DIR)
	@for dir in $(DEV_DIRS) $(TEST_DIRS) $(ACCOUNT_SETUP_DIR) $(DATAFLOWS_DIR); do \
		echo "=== upgrade: $$dir ==="; \
		$(TOFU_ENV) $(TOFU) -chdir=$$dir init -upgrade -backend=false -input=false || exit 1; \
	done

validate-dev: init-dev
	@for dir in $(DEV_DIRS); do \
		echo "=== validate: $$dir ==="; \
		$(TOFU) -chdir=$$dir validate || exit 1; \
	done

fmt:
	$(TOFU) fmt -recursive

test: $(PLUGIN_CACHE_DIR)
	$(TOFU_ENV) $(TOFU) -chdir=$(DATAFLOWS_DIR) init -backend=false -input=false
	$(TOFU) -chdir=$(DATAFLOWS_DIR) test

bootstrap-phase1-dev: $(PLUGIN_CACHE_DIR)
	$(TOFU_ENV) $(TOFU) -chdir=./environments/dev init -input=false
	$(TOFU) -chdir=./environments/dev apply $(BOOTSTRAP_PHASE1_TARGETS)

bootstrap-phase2-dev: $(PLUGIN_CACHE_DIR)
	$(TOFU_ENV) $(TOFU) -chdir=./environments/dev init -input=false
	$(TOFU) -chdir=./environments/dev apply $(BOOTSTRAP_PHASE2_TARGETS)

bootstrap-phase3-dev: $(PLUGIN_CACHE_DIR)
	$(TOFU_ENV) $(TOFU) -chdir=./environments/dev init -input=false
	$(TOFU) -chdir=./environments/dev apply $(BOOTSTRAP_PHASE3_TARGETS)

plan-dev: $(PLUGIN_CACHE_DIR)
	@for dir in $(DEV_DIRS); do \
		echo "=== init: $$dir ==="; \
		$(TOFU_ENV) $(TOFU) -chdir=$$dir init -input=false || exit 1; \
		echo "=== plan: $$dir ==="; \
		$(TOFU) -chdir=$$dir plan -input=false $(APPLY_TARGETS) || exit 1; \
	done

apply-dev: $(PLUGIN_CACHE_DIR)
	@for dir in $(DEV_DIRS); do \
		echo "=== init: $$dir ==="; \
		$(TOFU_ENV) $(TOFU) -chdir=$$dir init -input=false || exit 1; \
		echo "=== apply: $$dir ==="; \
		$(TOFU) -chdir=$$dir apply -input=false -auto-approve $(APPLY_TARGETS) || exit 1; \
	done
