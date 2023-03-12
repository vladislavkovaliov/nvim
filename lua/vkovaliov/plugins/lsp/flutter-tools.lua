
local flutter_tools_status, flutter_tools = pcall(require, "flutter_tools")
if not flutter_tools_status then
  return
end

flutter_tools.setup()
