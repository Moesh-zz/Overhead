# Are there glass blocks above the player?
scoreboard players tag @a add CheckForState
execute @a[tag=CheckForState] ~ ~ ~ testforblock ~ ~3 ~ minecraft:air
scoreboard players tag @a[tag=CheckForState,score_SuccessCount=0] add SetToSink
execute @a[tag=CheckForState] ~ ~ ~ testforblock ~ ~4 ~ minecraft:air
scoreboard players tag @a[tag=CheckForState,score_SuccessCount=0] add SetToSink

# Player is sneaking, ignore rise/hover logic
scoreboard players tag @a[score_PlayerSneaking_min=1] add SetToDeadDrop
scoreboard players set @a[tag=SetToDeadDrop] PlayerSneaking 0
scoreboard players tag @a[tag=SetToDeadDrop] remove SetToSink
scoreboard players tag @a[tag=SetToDeadDrop] remove CheckForState

# Player is not sinking, do we rise or hover?
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!SetToSink] ~ ~ ~ detect ~ ~5 ~ minecraft:air 0 scoreboard players tag @a[tag=!Rising] add SetToRise
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!SetToSink] ~ ~ ~ detect ~ ~5 ~ minecraft:stained_glass -1 scoreboard players tag @a[tag=!Hovering] add SetToHover
execute @a[tag=CheckForState] ~ ~ ~ scoreboard players tag @s[tag=SetToRise] remove SetToSink
execute @a[tag=CheckForState] ~ ~ ~ scoreboard players tag @s[tag=SetToHover] remove SetToSink
scoreboard players tag @a[tag=CheckForState] remove CheckForState


# Rise
scoreboard players tag @a[tag=Rising] remove SetToRise
effect @a[tag=SetToRise] minecraft:levitation 0
effect @a[tag=SetToRise] minecraft:levitation 999999 3
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=DeadDropping] remove DeadDropping
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToRise] add Rising
scoreboard players tag @a[tag=SetToRise] remove SetToRise

# Dead drop
scoreboard players tag @a[tag=DeadDropping] remove SetToDeadDrop
effect @a[tag=SetToDeadDrop] minecraft:levitation 0
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToDeadDrop] add DeadDropping
scoreboard players tag @a[tag=SetToDeadDrop] remove SetToDeadDrop

# Sink
scoreboard players tag @a[tag=Sinking] remove SetToSink
effect @a[tag=SetToSink] minecraft:levitation 0
effect @a[tag=SetToSink] minecraft:levitation 999999 250
scoreboard players tag @a[tag=SetToSink] add Sinking
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=DeadDropping] remove DeadDropping
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
scoreboard players tag @a[tag=SetToSink] remove SetToSink

# Hover
scoreboard players tag @a[tag=Hovering] remove SetToHover
effect @a[tag=SetToHover] minecraft:levitation 0
effect @a[tag=SetToHover] minecraft:levitation 999999 255
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=DeadDropping] remove DeadDropping
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToHover] add Hovering
scoreboard players tag @a[tag=SetToHover] remove SetToHover

