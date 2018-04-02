scoreboard players tag @a[tag=Playing,score_leaveGame_min=1] add LeaveGame
function overhead:player/leave_game if @a[tag=LeaveGame]
scoreboard players set @a[score_leaveGame_min=1] leaveGame 0
