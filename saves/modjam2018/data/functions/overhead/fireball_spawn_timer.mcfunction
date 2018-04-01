#scoreboard players tag @e[type=area_effect_cloud,name=FireballSpawn] add RespawnTimerActive
execute @e[type=area_effect_cloud,name=FireballSpawn] ~ ~ ~ testfor @e[type=fireball,r=1]
scoreboard players tag @e[type=area_effect_cloud,name=FireballSpawn,score_SuccessCount=0,tag=!RespawnTimerActive] add RespawnTimerActive

# If respawn timer is active, start counting down
scoreboard players remove @e[type=area_effect_cloud,name=FireballSpawn,tag=RespawnTimerActive,score_fireballTimer_min=1] fireballTimer 1
scoreboard players tag @e[type=area_effect_cloud,name=FireballSpawn,tag=RespawnTimerActive,score_fireballTimer=0] add SpawnFireball

# If SpawnFireball tag exists, do things
execute @e[type=area_effect_cloud,name=FireballSpawn,tag=SpawnFireball] ~ ~ ~ kill @e[type=fireball,r=1]
execute @e[type=area_effect_cloud,name=FireballSpawn,tag=SpawnFireball] ~ ~ ~ summon fireball ~ ~ ~ {direction:[0.0,0.0,0.0],ExplosionPower:1}
execute @e[type=area_effect_cloud,name=FireballSpawn,tag=SpawnFireball] ~ ~ ~ scoreboard players operation @e[type=area_effect_cloud,name=FireballSpawn] fireballTimer = RespawnTime fireballTimer
scoreboard players tag @e[type=area_effect_cloud,name=FireballSpawn] remove RespawnTimerActive
scoreboard players tag @e[type=area_effect_cloud,name=FireballSpawn] remove SpawnFireball