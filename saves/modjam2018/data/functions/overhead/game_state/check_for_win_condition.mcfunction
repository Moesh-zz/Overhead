# IF player = 25 kills, end game, send players back to lobby

execute @a[score_playerKillCount_min=25] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=GameInProgress] add EndGame
execute @e[type=area_effect_cloud,name=Main,tag=EndGame] ~ ~ ~ tellraw @a {"translate":"overhead.playerWon","color":"green","with":[{"selector":"@a[score_playerKillCount_min=25]"}]}
function overhead:game_state/end_game if @e[type=area_effect_cloud,name=Main,tag=EndGame]
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=EndGame] remove EndGame