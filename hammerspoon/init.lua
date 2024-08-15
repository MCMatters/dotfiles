hs.hotkey.bind({"shift"}, "escape", function ()
  local alacritty = hs.application.find("org.alacritty")

  if alacritty ~= nil and alacritty:isFrontmost() then
    alacritty:hide()
  else
    hs.application.launchOrFocus("/Applications/Alacritty.app")
  end
end)

