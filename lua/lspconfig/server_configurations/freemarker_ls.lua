local util = require 'lspconfig.util'
local configs = require 'lspconfig.configs'
local server_name = 'freemarker_ls'

configs[server_name] = {
  default_config = {
    cmd = {
      'java',
      '-jar',
      'groovy-language-server-all.jar',
    },
    filetypes = { 'ftl' },
    root_dir = util.find_git_ancestor
  },
  docs = {
    description = [[
https://github.com/prominic/groovy-language-server.git
Requirements:
 - Linux/macOS (for now)
 - Java 11+
`groovyls` can be installed by following the instructions [here](https://github.com/prominic/groovy-language-server.git#build).
If you have installed groovy language server, you can set the `cmd` custom path as follow:
```lua
require'lspconfig'.groovyls.setup{
    -- Unix
    cmd = { "java", "-jar", "path/o/groovyls/groovy-language-server-all.jar" },
    ...
}
```
]],
  },
}
