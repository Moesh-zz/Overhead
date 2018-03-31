execute @s ~ ~ ~ function overhead:player/apply_effects
give @s minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stained_glass"],HideFlags:4,Unbreakable:1}
execute @r[type=area_effect_cloud,name=SpawnPoint] ~ ~ ~ spawnpoint @p[tag=Respawn] ~ ~ ~
scoreboard players tag @s remove Respawn