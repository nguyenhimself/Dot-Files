require 'os'
require 'io'
require 'string'

function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  return string.sub(s, 0, -2) -- Trim the trailing newline
end

currently_played_file = ""

-- Delete the file by moving it to the Trash

function delete_current_file()
  currently_played_file = mp.get_property("path")
  -- os.execute("/usr/local/bin/trash '" .. currently_played_file .. "'") -- macOS-specific
  os.execute("mv '" .. currently_played_file .. "' ~/.Trash/") -- OS-agnostic
  mp.commandv("show-text", "Deleted", 5000)
end

mp.add_forced_key_binding("d", "delete_current_file", delete_current_file)
