-- Main laptop display with 1.5x fractional scaling
hl.monitor({
    output = "eDP-1",
    mode = "2880x1800@120",
    position = "0x0",
    scale = 1.5
})

-- External monitor mirroring the laptop display
hl.monitor({
    output = "HDMI-A-1",
    mode = "preferred",
    position = "auto",
    scale = 1,
    mirror = "eDP-1"
})