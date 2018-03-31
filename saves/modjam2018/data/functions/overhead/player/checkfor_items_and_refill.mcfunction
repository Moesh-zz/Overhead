# Determine what items need to be refilled
execute @a[tag=Playing] ~ ~ ~ clear @s minecraft:diamond_pickaxe -1 0
scoreboard players tag @a[tag=Playing,score_AffectedItems=0] add RefillPickaxe
execute @a[tag=Playing] ~ ~ ~ clear @s minecraft:elytra -1 0
scoreboard players tag @a[tag=Playing,score_AffectedItems=0] add RefillElytra
execute @a[tag=Playing] ~ ~ ~ clear @s minecraft:barrier -1 0
scoreboard players tag @a[tag=Playing,score_AffectedItems=0] add RefillBarrier

# Diamond Pickaxe
give @s[tag=RefillPickaxe] minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stained_glass"],HideFlags:4,Unbreakable:1}
scoreboard players tag @a[tag=RefillPickaxe] remove RefillPickaxe

# Elytra
replaceitem entity @a[tag=RefillElytra] slot.armor.chest minecraft:elytra 1 425
scoreboard players tag @a[tag=RefillElytra] remove RefillElytra


replaceitem entity @s[tag=RefillBarrier] slot.inventory.8 minecraft:barrier
scoreboard players tag @a[tag=RefillBarrier] remove RefillBarrier