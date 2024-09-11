-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()


-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Batman'

-- Reload the configuration every minute
wezterm.time.call_after(120, function()
    wezterm.reload_configuration()
end)

config.background = {
    {
        source = {
            File = '/home/arjun/bg/' .. math.random(155) .. '.png'
        },
        hsb = { brightness = 0.005 }
    }
}
-- and finally, return the configuration to wezterm
return config
