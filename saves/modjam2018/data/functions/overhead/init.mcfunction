scoreboard objectives remove SuccessCount
scoreboard objectives add SuccessCount dummy

scoreboard objectives remove PlayerSneaking
scoreboard objectives add PlayerSneaking stat.sneakTime

scoreboard players add @a SuccessCount 0
stats entity @a set SuccessCount @s SuccessCount

function overhead:setup_for_testing
gamerule gameLoopFunction overhead:main