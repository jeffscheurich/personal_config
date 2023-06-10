local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), 'p:h:t')

local config = {
	cmd = {
		'/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/bin/java', -- or '/path/to/java17_or_newer/bin/java'
		'-Declipse.application=org.eclipse.jdt.ls.core.id1',
		'-Dosgi.bundles.defaultStartLevel=4',
		'-Declipse.product=org.eclipse.jdt.ls.core.product',
		'-Dlog.protocol=true',
		'-Dlog.level=ALL',
		'-Xmx1g',
		'--add-modules=ALL-SYSTEM',
		'--add-opens', 'java.base/java.util=ALL-UNNAMED',
		'--add-opens', 'java.base/java.lang=ALL-UNNAMED',
		'-jar', '/Users/jeffscherich/Applications/jdt-language-server/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
		'-configuration', '/Users/jeffscherich/Applications/jdt-language-server/config_mac',
		'-data', vim.fn.expand('~/.cache/jdtls-workspace') .. workspace_dir
	},
	root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
	capabilities = capabilities
}
require('jdtls').start_or_attach(config)

