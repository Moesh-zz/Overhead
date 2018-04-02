execute @a[tag=!Playing] ~ ~ ~ effect @s[tag=ApplyEffects] minecraft:weakness 99999 255 true
execute @a[tag=!Playing] ~ ~ ~ effect @s[tag=ApplyEffects] minecraft:regeneration 99999 255 true
execute @a[tag=!Playing] ~ ~ ~ effect @s[tag=ApplyEffects] minecraft:resistance 99999 50 true

execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ effect @a[tag=ApplyEffects] minecraft:fire_resistance 5 0
execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ effect @a[tag=ApplyEffects] minecraft:regeneration 5 3
execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ effect @a[tag=ApplyEffects] minecraft:absorption 5 4
scoreboard players tag @a[tag=ApplyEffects] remove ApplyEffects

# Always apply
effect @s minecraft:haste 999999 110 true