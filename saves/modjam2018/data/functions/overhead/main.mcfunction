function overhead:player/logged_off if @a[score_leaveGame_min=1]
execute @a[tag=!Dead] ~ ~ ~ execute @s[tag=!Respawn] ~ ~ ~ execute @s[tag=Playing] ~ ~ ~ function overhead:player/checkfor_player_leave_game
function overhead:player/register

function overhead:player/flag_dead_players
execute @a[tag=Respawn] ~ ~ ~ function overhead:player/respawn
function overhead:player/checkfor_items_and_refill
function overhead:player/refill_hunger_when_low
function overhead:player/give_health_for_attacking if @a[score_damageDealt_min=1]

function overhead:fireball_spawn_timer if @e[type=area_effect_cloud,name=Main,tag=GameInProgress]
function overhead:convert_drops
function overhead:game_state/check_for_win_condition

function overhead:player/join_game if @a[score_joinGame_min=1]
function overhead:check_for_game_start_conditions

function overhead:floating/handler