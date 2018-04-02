scoreboard players reset * playerKillCount
scoreboard objectives setdisplay sidebar
kill @e[type=fireball]

# Reset level
setblock 150 19 149 minecraft:redstone_block
setblock 150 19 149 minecraft:stone

execute @e[type=area_effect_cloud,name=Main,tag=!EndGame] ~ ~ ~ tellraw @a {"translate":"overhead.needSecondPlayer","color":"red"}
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=GameInProgress] remove GameInProgress