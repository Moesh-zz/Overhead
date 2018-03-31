effect @a[tag=SetToRise] minecraft:levitation 0
effect @a[tag=SetToRise] minecraft:levitation 999999 3
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=DeadDropping] remove DeadDropping
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToRise] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToRise] add Rising
scoreboard players tag @a[tag=SetToRise] remove SetToRise