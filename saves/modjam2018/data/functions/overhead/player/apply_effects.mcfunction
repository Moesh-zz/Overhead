execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ effect @a[tag=ApplyEffects] minecraft:fire_resistance 5 0
execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ effect @a[tag=ApplyEffects] minecraft:regeneration 5 3
execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ effect @a[tag=ApplyEffects] minecraft:absorption 5 3

# Always apply
effect @s minecraft:haste 999999 110 true