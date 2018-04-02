# summon fireball ~ ~1 ~ {direction:[0.0,0.0,0.0],ExplosionPower:1}

# Remove persistent tags
scoreboard players tag * remove Playing
scoreboard players tag * remove AnchorPresent
scoreboard players tag * remove BarrierStillPresent
scoreboard players tag * remove Hovering
scoreboard players tag * remove Rising
scoreboard players tag * remove Sinking
scoreboard players tag * remove Registered

# Setup objectives
scoreboard objectives remove SuccessCount
scoreboard objectives add SuccessCount dummy

scoreboard objectives remove AffectedItems
scoreboard objectives add AffectedItems dummy

scoreboard objectives remove playerSneaking
scoreboard objectives add playerSneaking stat.sneakTime

scoreboard objectives remove joinGame
scoreboard objectives add joinGame trigger

scoreboard objectives remove deathCount
scoreboard objectives add deathCount deathCount

scoreboard objectives remove playerKillCount
scoreboard objectives add playerKillCount playerKillCount Kills

scoreboard objectives remove fireballTimer
scoreboard objectives add fireballTimer dummy
	scoreboard players set RespawnTime fireballTimer 200

scoreboard objectives remove leaveGame
scoreboard objectives add leaveGame stat.leaveGame

scoreboard objectives remove damageDealt
scoreboard objectives add damageDealt stat.damageDealt

scoreboard objectives remove food
scoreboard objectives add food food

# Setup spawnpoints
kill @e[type=area_effect_cloud,name=SpawnPoint]
summon minecraft:area_effect_cloud 165 43 156 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 180 41 179 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 163 41 197 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 168 48 210 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 183 43 221 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 203 47 217 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 214 47 227 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 230 47 213 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 233 44 162 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 222 30 152 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 202 44 152 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 189 28 157 {CustomName:SpawnPoint,Tags:[],CustomNameVisible:0b, Duration:2147483647}

# Set-up Fireball spawning
kill @e[type=area_effect_cloud,name=FireballSpawn]
kill @e[type=fireball]
summon minecraft:area_effect_cloud 212 29 169 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 200 35 167 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 200 34 154 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 221 50 161 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 202 38 189 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 187 22 178 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 190 50 164 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 224 27 191 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 181 37 184 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 200 27 203 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 224 48 209 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 201 43 213 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 163 44 177 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 174 41 202 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 175 42 213 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 189 25 230 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 188 44 229 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 158 28 226 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
summon minecraft:area_effect_cloud 158 46 227 {CustomName:FireballSpawn,Tags:[],CustomNameVisible:0b, Duration:2147483647}
	scoreboard players operation @e[type=area_effect_cloud,name=FireballSpawn] fireballTimer = RespawnTime fireballTimer
	scoreboard players add @e[type=area_effect_cloud,name=FireballSpawn] SuccessCount 0
	stats entity @e[type=area_effect_cloud,name=FireballSpawn] set SuccessCount @s SuccessCount

# Set-up Main entity
kill @e[type=area_effect_cloud,name=Main]
summon minecraft:area_effect_cloud 128 3 128 {CustomName:Main,Tags:[],CustomNameVisible:0b, Duration:2147483647}
	scoreboard players add @e[type=area_effect_cloud,name=Main] SuccessCount 0
	stats entity @e[type=area_effect_cloud,name=Main] set SuccessCount @s SuccessCount

# Additional set-up functions
function overhead:setup_signs
function overhead:setup_for_testing

# Setup gamerules
gamerule keepInventory true
gamerule randomTickSpeed 1000
gamerule gameLoopFunction overhead:main