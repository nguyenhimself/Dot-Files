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

function copy_current_file()
  currently_played_file = mp.get_property("filename/no-ext")
  os.execute("echo '" .. currently_played_file .. "' | pbcopy")
  mp.commandv("show-text", "Copied filename", 5000)
end

mp.add_forced_key_binding("c", "copy_current_file", copy_current_file)
