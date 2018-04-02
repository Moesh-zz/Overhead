scoreboard players tag @a[score_joinGame_min=1] add SendPlayerToGame


effect @a[tag=SendPlayerToGame] minecraft:weakness 0
effect @a[tag=SendPlayerToGame] minecraft:saturation 0
effect @a[tag=SendPlayerToGame] minecraft:regeneration 0

scoreboard players tag @a[tag=SendPlayerToGame] add Respawn
scoreboard players tag @a[tag=SendPlayerToGame] add RefillItems
scoreboard players reset @a[tag=SendPlayerToGame] joinGame
tp @a[tag=SendPlayerToGame] @r[type=area_effect_cloud,name=SpawnPoint]
gamemode adventure @a[tag=SendPlayerToGame]
tellraw @a {"translate":"overhead.joinedGame","color":"light_purple","with":[{"selector":"@a[tag=SendPlayerToGame]","color":"white"}]}
tellraw @a[tag=SendPlayerToGame] {"translate":"overhead.exitViaInventory","color":"light_purple","with":[{"translate":"tile.barrier.name"}]}

# Tell player needs second player
execute @a[tag=SendPlayerToGame] ~ ~ ~ testfor @a[tag=Playing,c=2]
tellraw @a[tag=SendPlayerToGame,score_SuccessCount=0] {"translate":"overhead.needSecondPlayer","color":"red"}

scoreboard players tag @a[tag=SendPlayerToGame] add Playing
scoreboard players tag @a[tag=SendPlayerToGame] remove SendPlayerToGame