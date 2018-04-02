effect @a[tag=SetToDeadDrop] minecraft:levitation 0
effect @a[tag=SetToDeadDrop] minecraft:weakness 3 50
effect @a[tag=SetToDeadDrop] minecraft:mining_fatigue 3 250
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToDeadDrop] add DeadDropping
scoreboard players tag @a[tag=SetToDeadDrop] remove SetToDeadDrop