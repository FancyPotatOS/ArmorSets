#
#   Put On Head Set
#   
#   Purpose: To check if new headset was equipped and armor set doesn't overlap with equipped armor sets
#
#   Input: None
#


execute if entity @s[tag=armorsets.head_equipped] run return 0

execute store result score @s armorsets.headset run data get entity @s Inventory[{Slot:103b}].tag.armorsets.set_id

data modify storage armorsets:data current_set set from entity @s Inventory[{Slot:103b}].tag.armorsets

tag @s remove armorsets.conflicting_slots.true
execute if function armorsets:functionality/slot_data/check_conflicting_slots run tag @s add armorsets.conflicting_slots.true
execute if entity @s[tag=armorsets.conflicting_slots.true] run function armorsets:functionality/headset/reject
execute if entity @s[tag=armorsets.conflicting_slots.true] run return 0

tag @s add armorsets.head_equipped

function armorsets:functionality/slot_data/refresh_all_minor_slots
