#
#   Put On Chest Set
#   
#   Purpose: To check if new chestset was equipped and armor set doesn't overlap with equipped armor sets
#
#   Input: None
#


execute if entity @s[tag=armorsets.chest_equipped] run return 0

execute store result score @s armorsets.chestset run data get entity @s Inventory[{Slot:102b}].tag.armorsets.set_id

data modify storage armorsets:data current_set set from entity @s Inventory[{Slot:102b}].tag.armorsets

tag @s remove armorsets.conflicting_slots.true
execute if function armorsets:functionality/slot_data/check_conflicting_slots run tag @s add armorsets.conflicting_slots.true
execute if entity @s[tag=armorsets.conflicting_slots.true] run function armorsets:functionality/chestset/reject
execute if entity @s[tag=armorsets.conflicting_slots.true] run return 0

tag @s add armorsets.chest_equipped

#say put on

function armorsets:functionality/slot_data/refresh_all_minor_slots
