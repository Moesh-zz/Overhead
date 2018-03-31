scoreboard players tag @s[tag=Playing] remove BarrierStillPresent
scoreboard players tag @s[tag=Playing] add BarrierStillPresent {Inventory:[{Slot:17b,id:"minecraft:barrier"}]}
scoreboard players tag @s[tag=!BarrierStillPresent] add LeaveGame
execute @s[tag=!BarrierStillPresent] ~ ~ ~ function overhead:player/leave_game