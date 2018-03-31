scoreboard players reset * playerKillCount
scoreboard objectives setdisplay sidebar
tellraw @a {"translate":"overhead.gameNotRunning","color":"red"}
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=GameInProgress] remove GameInProgress