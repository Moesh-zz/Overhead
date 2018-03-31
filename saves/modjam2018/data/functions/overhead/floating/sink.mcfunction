effect @a[tag=SetToSink] minecraft:levitation 0
effect @a[tag=SetToSink] minecraft:levitation 999999 250
scoreboard players tag @a[tag=SetToSink] add Sinking
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=DeadDropping] remove DeadDropping
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToSink] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
scoreboard players tag @a[tag=SetToSink] remove SetToSink