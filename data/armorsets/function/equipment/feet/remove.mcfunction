#
#   Remove Feet Piece
#   
#   Purpose: To give the feet item back to the player unequipped
#
#   Input: None
#

summon item ~ ~ ~ {Tags:["armorsets.returned_item"],Age:0,Item:{id:"minecraft:dirt",count:1b}}

data modify entity @e[type=item,tag=armorsets.returned_item,limit=1] Item set from entity @s Inventory[{Slot:100b}]

item modify entity @s armor.feet armorsets:remove_item

execute as @e[type=item,tag=armorsets.returned_item,limit=1] run tag @s remove armorsets.returned_item

scoreboard players reset @s armorsets.feetset




