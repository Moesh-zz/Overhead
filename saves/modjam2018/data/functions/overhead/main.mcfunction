function overhead:player/register

function overhead:player/join_game if @a[score_joinGame_min=1]

function overhead:player/flag_dead_players
execute @p[tag=Respawn] ~ ~ ~ function overhead:player/respawn

function overhead:floating/handler