# Remove pixkaxe is game in not in progress
execute @e[type=area_effect_cloud,name=Main,tag=!GameInProgress] ~ ~ ~ execute @a[tag=Playing] ~ ~ ~ clear @s minecraft:diamond_pickaxe -1 0
execute @e[type=area_effect_cloud,name=Main,tag=!GameInProgress] ~ ~ ~ clear @a[tag=Playing,score_AffectedItems_min=1] minecraft:diamond_pickaxe

# Determine what items need to be refilled
scoreboard players tag @a[tag=Playing] add RefillItems
execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ execute @a[tag=RefillItems] ~ ~ ~ clear @s minecraft:diamond_pickaxe -1 0
execute @e[type=area_effect_cloud,name=Main,tag=GameInProgress] ~ ~ ~ scoreboard players tag @a[tag=RefillItems,score_AffectedItems=0] add RefillPickaxe
execute @a[tag=RefillItems] ~ ~ ~ clear @s minecraft:barrier -1 0
scoreboard players tag @a[tag=RefillItems,score_AffectedItems=0] add RefillBarrier
execute @a[tag=RefillItems] ~ ~ ~ clear @s minecraft:diamond_boots -1 0
scoreboard players tag @a[tag=RefillItems,score_AffectedItems=0] add RefillBoots
scoreboard players tag @a[tag=RefillItems] remove RefillItems

# Diamond Pickaxe
give @a[tag=RefillPickaxe] minecraft:diamond_pickaxe 1 0 {CanDestroy:["minecraft:stained_glass"],HideFlags:4,Unbreakable:1}
scoreboard players tag @a[tag=RefillPickaxe] remove RefillPickaxe

# Refill barrier if needed
replaceitem entity @a[tag=RefillBarrier] slot.inventory.8 minecraft:barrier
scoreboard players tag @a[tag=RefillBarrier] remove RefillBarrier

replaceitem entity @a[tag=RefillBoots] slot.armor.feet minecraft:diamond_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:2,Operation:0,UUIDLeast:94458,UUIDMost:487158},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:0,Operation:0,UUIDLeast:494174,UUIDMost:166488}],Unbreakable:1,ench:[{id:2,lvl:255}]}
scoreboard players tag @a[tag=RefillBoots] remove RefillBoots