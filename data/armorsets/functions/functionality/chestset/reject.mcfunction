#
#   Reject Chest Item
#   
#   Purpose: To take off chest item
#
#   Input: None
#


title @s actionbar {"text":"Chest armor piece conflicts with other armor set!"}
title @s title {"text":""}

data modify storage armorsets:data physical_item set value {}

data modify storage armorsets:data physical_item set from entity @s Inventory[{Slot:102b}]

item replace entity @s armor.chest with air

function armorsets:functionality/instantiate_item
