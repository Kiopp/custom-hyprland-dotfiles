-- Primary 1440p monitor
hl.monitor({
    output = "DP-2",
    mode = "2560x1440@144",
    position = "0x0",
    scale = 1
})

-- Secondary 1080p monitor placed to the left
hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@74.97",
    position = "-1920x0",
    scale = 1
})