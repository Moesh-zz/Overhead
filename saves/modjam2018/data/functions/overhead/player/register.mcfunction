# Reset stuff
clear @a[tag=!Registered]
xp -999999 @a[tag=!Registered]
xp -999999L @a[tag=!Registered]
tp @a[tag=!Registered] 171 71 169

scoreboard players add @a[tag=!Registered] SuccessCount 0
stats entity @a[tag=!Registered] set SuccessCount @s SuccessCount
scoreboard players add @a[tag=!Registered] AffectedItems 0
stats entity @a[tag=!Registered] set AffectedItems @s AffectedItems

# Give things
execute @a[tag=!Registered] ~ ~ ~ function overhead:player/apply_effects
scoreboard players enable @a[tag=!Registered] joinGame
scoreboard players tag @a[tag=!Registered] add Registered