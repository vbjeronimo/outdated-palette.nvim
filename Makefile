.PHONY: dependencies
dependencies:
	git clone --depth 1 https://github.com/nvim-lua/plenary.nvim dependencies/pack/vendor/start/plenary.nvim

.PHONY: clean-dependencies
clean-dependencies:
	rm -rf ./dependencies

lint:
	selene ./lua

format:
	stylua ./lua
