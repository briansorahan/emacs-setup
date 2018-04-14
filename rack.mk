# Build rack plugins from source against a configurable version of Rack.
VERSION      ?= v0.6

RACK_DIR     ?= $(HOME)/github.com/briansorahan

PLUGINS_SRC  ?= github.com/VCVRack/AudibleInstruments          \
                github.com/VCVRack/Befaco                      \
                github.com/bogaudio/BogaudioModules            \
                github.com/cfoulc/cf                           \
                github.com/VCVRack/ESeries                     \
                github.com/VCVRack/Fundamental                 \
                github.com/mhetrick/hetrickcv                  \
                github.com/jeremywren/JW-Modules               \
                github.com/ValleyAudio/ValleyRackFree

PLUGINS_REL  ?= https://github.com/modlfo/VultModules/releases/download/v0.6.1/VultModulesFree-0.6.1-lin.zip

rack:
	@echo "Checking out Rack..."
	@mkdir -p $(RACK_DIR)
	@cd $(RACK_DIR) && git checkout git@github.com:briansorahan/Rack
	@cd $(RACK_DIR)/Rack                                           && \
           git remote add upstream https://github.com/VCVRack/Rack     && \
           git fetch upstream                                          && \
           git checkout $(VERSION)                                     && \
           git pull upstream
	@echo "Checked out Rack."
	@echo "Building Rack..."
	@cd $(RACK_DIR)/Rack                                           && \
           git submodule update --init --recursive                     && \
           make dep                                                    && \
           make
	@echo "Finished building Rack."

plugins: plugins_rel plugins_src

plugins_rel:
	@for p in $(PLUGINS_REL); do \
         done

plugins_src:

.PHONY: checkout plugins_rel plugins_src rack
