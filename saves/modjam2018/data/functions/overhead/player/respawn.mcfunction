execute @s ~ ~ ~ function overhead:player/apply_effects
scoreboard players tag @s add RefillItems
execute @s ~ ~ ~ function overhead:player/checkfor_items_and_refill
execute @r[type=area_effect_cloud,name=SpawnPoint] ~ ~ ~ spawnpoint @p[tag=Respawn] ~ ~ ~
scoreboard players tag @s remove Respawn