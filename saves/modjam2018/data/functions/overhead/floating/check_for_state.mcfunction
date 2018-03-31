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
scoreboard players tag @a[score_playerSneaking_min=1] add SetToDeadDrop
scoreboard players set @a[tag=SetToDeadDrop] playerSneaking 0
scoreboard players tag @a[tag=SetToDeadDrop] remove CheckForState

execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=!GlassIsTooClose] add SetToHover
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=GlassIsTooClose] add SetToSink
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=GlassIsTooClose] add SetToSink
execute @a[tag=CheckForState] ~ ~ ~ execute @s[tag=!AnchorPresent] ~ ~ ~ scoreboard players tag @s[tag=!GlassIsTooClose] add SetToRise
scoreboard players tag @a[tag=CheckForState] remove CheckForState