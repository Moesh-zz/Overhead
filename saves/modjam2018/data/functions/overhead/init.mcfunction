# TODO: Add fireballs to level
# summon fireball ~ ~1 ~ {direction:[0.0,0.0,0.0],ExplosionPower:1}

# Setup objectives
scoreboard objectives remove SuccessCount
scoreboard objectives add SuccessCount dummy

scoreboard objectives remove AffectedItems
scoreboard objectives add AffectedItems dummy
	scoreboard players add @a AffectedItems 0
	stats entity @a set AffectedItems @s AffectedItems

scoreboard objectives remove playerSneaking
scoreboard objectives add playerSneaking stat.sneakTime

scoreboard objectives remove joinGame
scoreboard objectives add joinGame trigger

scoreboard objectives remove deathCount
scoreboard objectives add deathCount deathCount

scoreboard objectives remove playerKillCount
scoreboard objectives add playerKillCount playerKillCount Kills

scoreboard objectives remove leaveGame
scoreboard objectives add leaveGame stat.leaveGame

# Setup spawnpoints
kill @e[type=area_effect_cloud,name=SpawnPoint]
summon minecraft:area_effect_cloud 109 18 130 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 109 18 140 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 98 18 141 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:1b, Duration:2147483647}
summon minecraft:area_effect_cloud 98 18 130 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:1b, Duration:2147483647}


kill @e[type=area_effect_cloud,name=Main]
summon minecraft:area_effect_cloud 128 3 128 {CustomName:Main,Tags:[],CustomNameVisible:1b, Duration:2147483647}
	scoreboard players add @e[type=area_effect_cloud,name=Main] SuccessCount 0
	stats entity @e[type=area_effect_cloud,name=Main] set SuccessCount @s SuccessCount


# Setup players
scoreboard players add @a SuccessCount 0
stats entity @a set SuccessCount @s SuccessCount

function overhead:setup_for_testing
function overhead:setup_signs
gamerule gameLoopFunction overhead:main