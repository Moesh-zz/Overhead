effect @a[tag=SetToDeadDrop] minecraft:levitation 0
#effect @a[tag=SetToDeadDrop] minecraft:slowness 10 3
#effect @a[tag=SetToDeadDrop] minecraft:weakness 10 255
#effect @a[tag=SetToDeadDrop] minecraft:mining_fatigue 10 255
#effect @a[tag=SetToDeadDrop] minecraft:fire_resistance 10
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Hovering] remove Hovering
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Rising] remove Rising
execute @a[tag=SetToDeadDrop] ~ ~ ~ scoreboard players tag @a[tag=Sinking] remove Sinking
scoreboard players tag @a[tag=SetToDeadDrop] add DeadDropping
scoreboard players tag @a[tag=SetToDeadDrop] remove SetToDeadDrop