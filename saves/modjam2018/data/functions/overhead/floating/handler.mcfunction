# Are there glass blocks above the player?
scoreboard players tag @a add CheckForState
execute @a[tag=CheckForState] ~ ~ ~ testforblock ~ ~3 ~ minecraft:air
scoreboard players tag @a[tag=CheckForState,score_SuccessCount=0] add SetToSink
execute @a[tag=CheckForState] ~ ~ ~ testforblock ~ ~4 ~ minecraft:air
scoreboard players tag @a[tag=CheckForState,score_SuccessCount=0] add SetToSink

# Player is not sinking, do we rise or hover?
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!SetToSink] ~ ~ ~ detect ~ ~5 ~ minecraft:air 0 scoreboard players tag @a[tag=!Rising] add SetToRise
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!SetToSink] ~ ~ ~ detect ~ ~5 ~ minecraft:stained_glass -1 scoreboard players tag @a[tag=!Hovering] add SetToHover
scoreboard players tag @a[tag=SetToRise] remove SetToSink
scoreboard players tag @a[tag=SetToHover] remove SetToSink
scoreboard players tag @a[tag=CheckForState] remove CheckForState

# Rise
scoreboard players tag @a[tag=Rising] remove SetToRise
effect @a[tag=SetToRise] minecraft:levitation 0
effect @a[tag=SetToRise] minecraft:levitation 999999 3
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToRise] add Rising
scoreboard players tag @a[tag=SetToRise] remove SetToRise

# Hover
scoreboard players tag @a[tag=Hovering] remove SetToHover
effect @a[tag=SetToHover] minecraft:levitation 0
effect @a[tag=SetToHover] minecraft:levitation 999999 255
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToHover] add Hovering
scoreboard players tag @a[tag=SetToHover] remove SetToHover

# Sink
scoreboard players tag @a[tag=Sinking] remove SetToSink
effect @a[tag=SetToSink] minecraft:levitation 0
effect @a[tag=SetToSink] minecraft:levitation 999999 250
scoreboard players tag @a[tag=SetToSink] add Sinking
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
scoreboard players tag @a[tag=SetToSink] remove SetToSink