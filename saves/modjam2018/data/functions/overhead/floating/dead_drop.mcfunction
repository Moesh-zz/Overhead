effect @a[tag=SetToDeadDrop] minecraft:levitation 0
execute @s[tag=SetToDeadDrop] ~ ~ ~ effect @s[tag=Playing] minecraft:weakness 3 50
execute @s[tag=SetToDeadDrop] ~ ~ ~ effect @s[tag=Playing] minecraft:mining_fatigue 3 250
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToDeadDrop] add DeadDropping
scoreboard players tag @a[tag=SetToDeadDrop] remove SetToDeadDrop