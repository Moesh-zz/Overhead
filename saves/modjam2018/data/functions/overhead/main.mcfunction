function overhead:player/logged_off if @a[score_leaveGame_min=1]
function overhead:player/register

function overhead:player/flag_dead_players
execute @p[tag=Respawn] ~ ~ ~ function overhead:player/respawn

function overhead:player/join_game if @a[score_joinGame_min=1]
function overhead:check_for_game_start_conditions

function overhead:floating/handler