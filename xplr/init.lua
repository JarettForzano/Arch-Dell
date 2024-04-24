version = "0.21.0"

local home = os.getenv("HOME")

package.path = home
  .. "/.config/xplr/plugins/?/init.lua;"
  .. home
  .. "/.config/xplr/plugins/?.lua;"
  .. package.path

require("tree-view").setup()
require("alacritty").setup()
require("tri-pane").setup()
require("nuke").setup{
  pager = "more", -- default: less -R
  open = {
    run_executables = true, -- default: false
    custom = {
      {mime = "video/mp4", command = "vlc {}"},
      {mime_regex = "^video/.*", command = "smplayer {}"},
      {mime_regex = ".*", command = "xdg-open {}"}
    }
  },
  view = {
    show_line_numbers = true, -- default: false
  },
  smart_view = {
    custom = {
      {extension = "so", command = "ldd -r {} | less"},
    }
  }
}

  local key = xplr.config.modes.builtin.default.key_bindings.on_key
  
  key.v = {
    help = "nuke",
    messages = {"PopMode", {SwitchModeCustom = "nuke"}}
  }
  key["f3"] = xplr.config.modes.custom.nuke.key_bindings.on_key.v
  key["enter"] = xplr.config.modes.custom.nuke.key_bindings.on_key.o



require("zoxide").setup{
  bin = "$HOME/.local/share/zoxide",
  mode = "default",
  key = "z",
}
