# GameInProgress tag already available?
	# yes = are there still 2players?
		# yes = do nothing
		# no = end game, clear scores
	# no = Are there two players?
		# yes, start game
		# no, do nothing

execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ testfor @a[tag=Playing,c=2]
function overhead:game_state/end_game if @e[type=area_effect_cloud,name=Main,tag=GameInProgress,score_SuccessCount=0]