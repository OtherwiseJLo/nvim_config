local dap = require('dap')

dap.adapters.cpp = {
  type = 'executable',
  attach = {
    pidProperty = "pid",
    pidSelect = "ask"
  },
  command = 'lldb-vscode-11', -- my binary was called 'lldb-vscode-11'
  env = {
    LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "YES"
  },
  name = "lldb"
}


-- Mockdebug/Markdown
dap.adapters.markdown = {
  type = "executable",
  name = "mockdebug",
  command = "node",
  args = {"./out/debugAdapter.js"},
  cwd = "path/to/vscode-mock-debug/"
}

dap.configurations.markdown = {
   {
      type = "mock",
      request = "launch",
      name = "mock test",
      program = "/path/to/a/readme.md",
      stopOnEntry = true,
      debugServer = 4711
   }
 }


-- Golang
dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = {os.getenv('HOME') .. '/dev/golang/vscode-go/dist/debugAdapter.js'};
}
dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'launch';
    showLog = false;
    program = "${file}";
    dlvToolPath = '/usr/bin/dlv'  -- Adjust to where delve is installed
  },
}
