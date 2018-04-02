scoreboard players tag @a[tag=LeaveGame] remove Playing
scoreboard players tag @a[tag=LeaveGame] remove Registered
scoreboard players tag @a[tag=LeaveGame] add ApplyEffects
tp @a[tag=LeaveGame] 171 71 169
spawnpoint @a[tag=LeaveGame] 171 71 169
clear @a[tag=LeaveGame]
scoreboard players set @a[tag=LeaveGame] joinGame 0
scoreboard players enable @a[tag=LeaveGame] joinGame
tellraw @a {"translate":"overhead.leftGame","color":"light_purple","with":[{"selector":"@a[tag=LeaveGame]","color":"white"}]}

scoreboard players tag @a[tag=LeaveGame] remove LeaveGame