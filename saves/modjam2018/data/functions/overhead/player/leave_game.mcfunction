scoreboard players tag @a[tag=LeaveGame] remove Playing
scoreboard players tag @a[tag=LeaveGame] remove Registered
tp @a[tag=LeaveGame] 123 5 130
clear @a[tag=LeaveGame]
scoreboard players set @a[tag=LeaveGame] joinGame 0
scoreboard players enable @a[tag=LeaveGame] joinGame
tellraw @a {"translate":"overhead.leftGame","color":"light_purple","with":[{"selector":"@a[tag=LeaveGame]","color":"white"}]}

scoreboard players tag @a[tag=LeaveGame] remove LeaveGame