local status, lspinstall = pcall(require, "lspinstall")
if (not status) then return end

require'lspinstall'.setup()
local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end
