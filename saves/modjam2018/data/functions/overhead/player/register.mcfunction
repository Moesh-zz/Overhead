# Reset stuff
clear @a[tag=!Registered]
xp -999999 @a[tag=!Registered]
xp -999999L @a[tag=!Registered]
tp @a[tag=!Registered] 171 71 169

# Give things
execute @a[tag=!Registered] ~ ~ ~ function overhead:player/apply_effects
scoreboard players enable @a[tag=!Registered] joinGame
scoreboard players tag @a[tag=!Registered] add Registered