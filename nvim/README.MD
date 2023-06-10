General structure is `./init.lua` gets called and 
1. Does some general setup (personal keybinds, relative numbers, etc..)
2. Installs plugins
3. Calls module for plugin configs and keybinds
	* These plugins are modularized and their configurations can be found at ./lua/core/plugin_config

./ftplugin is for java language server
