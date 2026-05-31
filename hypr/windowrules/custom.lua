-- Always open Discord on workspace 2
hl.window_rule({
    match = { class = "^(discord)$" },
    workspace = "2 silent"
})

-- Always open Spotify on workspace 2
hl.window_rule({
    match = { class = "^(Spotify)$" },
    workspace = "2 silent"
})