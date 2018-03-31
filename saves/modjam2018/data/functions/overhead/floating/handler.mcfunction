function overhead:floating/check_for_state

# Rise
scoreboard players tag @a[tag=Rising] remove SetToRise
function overhead:floating/rise if @a[tag=SetToRise]

# Dead drop
scoreboard players tag @a[tag=DeadDropping] remove SetToDeadDrop
function overhead:floating/dead_drop if @a[tag=SetToDeadDrop]

# Sink
scoreboard players tag @a[tag=Sinking] remove SetToSink
function overhead:floating/sink if @a[tag=SetToSink]

# Hover
scoreboard players tag @a[tag=Hovering] remove SetToHover
function overhead:floating/hover if @a[tag=SetToHover]