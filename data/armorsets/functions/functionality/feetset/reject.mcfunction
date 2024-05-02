#
#   Reject Feet Item
#   
#   Purpose: To take off feet item
#
#   Input: None
#


title @s actionbar {"text":"Feet armor piece conflicts with other armor set!"}
title @s title {"text":""}

data modify storage armorsets:data physical_item set value {}

data modify storage armorsets:data physical_item set from entity @s Inventory[{Slot:100b}]

item replace entity @s armor.feet with air

function armorsets:functionality/instantiate_item
