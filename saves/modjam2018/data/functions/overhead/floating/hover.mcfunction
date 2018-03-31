effect @a[tag=SetToHover] minecraft:levitation 0
effect @a[tag=SetToHover] minecraft:levitation 999999 255
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=DeadDropping] remove DeadDropping
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
execute @a[tag=SetToHover] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToHover] add Hovering
scoreboard players tag @a[tag=SetToHover] remove SetToHover