#
#   Reject Legs Item
#   
#   Purpose: To take off legs item
#
#   Input: None
#


title @s actionbar {"text":"Legs armor piece conflicts with other armor set!"}
title @s title {"text":""}

data modify storage armorsets:data physical_item set value {}

data modify storage armorsets:data physical_item set from entity @s Inventory[{Slot:101b}]

item replace entity @s armor.legs with air

function armorsets:functionality/instantiate_item
