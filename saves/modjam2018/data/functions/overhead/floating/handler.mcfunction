# Check if anchor glass is present
scoreboard players tag @a add CheckForState
execute @a[tag=CheckForState] ~ ~ ~ scoreboard players tag @s[tag=AnchorPresent] remove AnchorPresent
execute @a[tag=CheckForState] ~ ~ ~ detect ~ ~5 ~ minecraft:stained_glass -1 scoreboard players tag @s add AnchorPresent
# Are there glass blocks too close the player?
execute @a[tag=CheckForState] ~ ~ ~ scoreboard players tag @a[tag=GlassIsTooClose] remove GlassIsTooClose
execute @a[tag=CheckForState] ~ ~ ~ detect ~ ~2 ~ minecraft:stained_glass -1 scoreboard players tag @s add GlassIsTooClose
execute @a[tag=CheckForState] ~ ~ ~ detect ~ ~3 ~ minecraft:stained_glass -1 scoreboard players tag @s add GlassIsTooClose
execute @a[tag=CheckForState] ~ ~ ~ detect ~ ~4 ~ minecraft:stained_glass -1 scoreboard players tag @s add GlassIsTooClose

# Player is sneaking, ignore rise/hover logic
scoreboard players tag @a[score_PlayerSneaking_min=1] add SetToDeadDrop
scoreboard players set @a[tag=SetToDeadDrop] PlayerSneaking 0
scoreboard players tag @a[tag=SetToDeadDrop] remove CheckForState

execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=!GlassIsTooClose] add SetToHover
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=GlassIsTooClose] add SetToSink
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=GlassIsTooClose] add SetToSink
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=!GlassIsTooClose] add SetToRise
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
effect @a[tag=SetToDeadDrop] minecraft:slowness 10 3
effect @a[tag=SetToDeadDrop] minecraft:weakness 10 255
effect @a[tag=SetToDeadDrop] minecraft:mining_fatigue 10 255
effect @a[tag=SetToDeadDrop] minecraft:fire_resistance 10
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

