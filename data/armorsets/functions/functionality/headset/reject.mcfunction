#
#   Reject Head Item
#   
#   Purpose: To take off head item
#
#   Input: None
#


title @s actionbar {"text":"Head armor piece conflicts with other armor set!"}
title @s title {"text":""}

data modify storage armorsets:data physical_item set value {}

data modify storage armorsets:data physical_item set from entity @s Inventory[{Slot:103b}]

item replace entity @s armor.head with air

function armorsets:functionality/instantiate_item
