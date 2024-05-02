#
#   Clear Minor Slots
#   
#   Purpose: To clear all minor armor pieces of provided armorset
#
#   Input: Storage armorsets:data current_set
#


execute if data entity @s Inventory[{Slot:103b}].tag.armorsets{type:"minor"} run item replace entity @s armor.head with minecraft:air
execute if data entity @s Inventory[{Slot:102b}].tag.armorsets{type:"minor"} run item replace entity @s armor.chest with minecraft:air
execute if data entity @s Inventory[{Slot:101b}].tag.armorsets{type:"minor"} run item replace entity @s armor.legs with minecraft:air
execute if data entity @s Inventory[{Slot:100b}].tag.armorsets{type:"minor"} run item replace entity @s armor.feet with minecraft:air


