scoreboard players reset * playerKillCount
scoreboard objectives setdisplay sidebar playerKillCount
kill @e[type=fireball]
execute @e[type=area_effect_cloud,name=FireballSpawn] ~ ~ ~ summon fireball ~ ~ ~ {direction:[0.0,0.0,0.0],ExplosionPower:1}
tellraw @a {"translate":"overhead.gameStarted","color":"red"}

scoreboard players add @a[tag=Playing] playerKillCount 0
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=!GameInProgress] add GameInProgress