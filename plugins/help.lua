do

-- Returns true if is not empty
local function has_usage_data(dict)
  if (dict.usage == nil or dict.usage == '') then
    return false
  end
  return true
end

-- Get commands for that plugin
local function plugin_help(name)
  local plugin = plugins[name]
  if not plugin then return nil end

  local text7 = ""
  if (type(plugin.usage) == "table") then
    for ku,usage in pairs(plugin.usage) do
      text7 = text7..usage..'\n'
    end
    text7 = text7..'\n'
  elseif has_usage_data(plugin) then -- Is not empty
    text7 = text7..plugin.usage..'\n\n'
  end
  return text7
end

-- !help command
local function telegram_help()
  local text7 = "Plugin list: \n\n"
  -- Plugins names
  for name in pairs(plugins) do
    text7 = text7..name..'\n'
  end
  text7 = text7..'\n'..'Write "!help [plugin name]" for more info.'
  text7 = text7..'\n'..'Or "!help all" to show all info.'
  return text7
end

-- !help all command
local function help_all()
  local ret = ""
  for name in pairs(plugins) do
    ret = ret .. plugin_help(name)
  end
  return ret
end

local function run(msg, matches)
  if matches[1] == 'help' and matches [2] then
	local text = plugin_help(matches[2])
	return text7
  end
end

return {
  patterns = {
	"^#(help) (.+)"
  }, 
  run = run 
}

end