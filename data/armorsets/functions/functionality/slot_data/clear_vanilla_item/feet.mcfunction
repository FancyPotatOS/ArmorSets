#
#   Clear Vanilla Feet Item
#   
#   Purpose: To remove the player's feet item and summon it to be picked up on the player
#
#   Input: None
#


execute unless data entity @s Inventory[{Slot:100b}] run return 0
execute if data entity @s Inventory[{Slot:100b}].tag.armorsets run return 0

summon item ~ ~ ~ {Tags:["armorsets.vanilla_item_holder.temp"],Age:0,Item:{id:"minecraft:cobblestone",Count:1b}}

data modify entity @e[type=item,limit=1,tag=armorsets.vanilla_item_holder.temp] Item set from entity @s Inventory[{Slot:100b}]

tag @e[type=item,limit=1,tag=armorsets.vanilla_item_holder.temp] remove armorsets.vanilla_item_holder.temp

