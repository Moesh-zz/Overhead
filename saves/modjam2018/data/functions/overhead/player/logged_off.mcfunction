scoreboard players tag @a[score_leaveGame_min=1] add LoggedOff
scoreboard players set @a[score_leaveGame_min=1] leaveGame 0

scoreboard players tag @a[tag=LoggedOff] remove Playing
scoreboard players tag @a[tag=LoggedOff] remove Registered
tp @a[tag=LoggedOff] 123 5 130
scoreboard players set @a[tag=LoggedOff] joinGame 0
scoreboard players enable @a[tag=LoggedOff] joinGame

scoreboard players tag @a[tag=LoggedOff] remove LoggedOff