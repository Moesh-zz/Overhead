scoreboard objectives remove SuccessCount
scoreboard objectives add SuccessCount dummy

scoreboard objectives remove PlayerSneaking
scoreboard objectives add PlayerSneaking stat.sneakTime

scoreboard players add @a SuccessCount 0
stats entity @a set SuccessCount @s SuccessCount


#scoreboard players add @a AffectedItems 0
#scoreboard players add @a QueryResult 0
#stats entity @a set AffectedItems @s AffectedItems
#stats entity @a set QueryResult @s QueryResult

function overhead:setup_for_testing
gamerule gameLoopFunction overhead:main