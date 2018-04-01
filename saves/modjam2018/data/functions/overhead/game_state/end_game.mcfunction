scoreboard players reset * playerKillCount
scoreboard objectives setdisplay sidebar

# Reset level
setblock 150 19 149 minecraft:redstone_block
setblock 150 19 149 minecraft:stone

tellraw @a {"translate":"overhead.gameNotRunning","color":"red"}
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=GameInProgress] remove GameInProgress