currently_played_track = ""

function play_current_track_in_iina()
  currently_played_track = mp.get_property("path")
  os.execute("/Applications/IINA.app/Contents/MacOS/IINA '" ..currently_played_track .. "' ")
end

mp.add_forced_key_binding("w", "play_current_track_in_iina", play_current_track_in_iina)
