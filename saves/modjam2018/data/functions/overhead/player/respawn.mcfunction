execute @s ~ ~ ~ function overhead:player/apply_effects

# Failsafe for when players respawn without a floating state.
scoreboard players tag @s add SetToHover

execute @r[type=area_effect_cloud,name=SpawnPoint] ~ ~ ~ execute @a[tag=Playing] ~ ~ ~ spawnpoint @s[tag=Respawn] ~ ~ ~
execute @r[type=area_effect_cloud,name=SpawnPoint] ~ ~ ~ execute @a[tag=!Playing] ~ ~ ~ spawnpoint @s[tag=Respawn] 171 71 169
scoreboard players tag @s remove Respawn