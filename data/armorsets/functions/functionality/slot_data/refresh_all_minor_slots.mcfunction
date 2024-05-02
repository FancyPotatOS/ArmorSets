#
#   Save Minor Slots items
#   
#   Purpose: To refresh all minor items
#
#   Input: None
#


function armorsets:functionality/slot_data/clear_minor_slots


execute if data entity @s Inventory[{Slot:103b}].tag.armorsets{type:"major"} run tag @s add armorsets.refresh_minor_slots.true
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run data modify storage armorsets:data current_set set from entity @s Inventory[{Slot:103b}].tag.armorsets
execute if entity @s[tag=armorsets.refresh_minor_slots.true] store result score @s armorsets.headset run data get entity @s Inventory[{Slot:103b}].tag.armorsets.set_id
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run function armorsets:functionality/slot_data/apply_set
tag @s remove armorsets.refresh_minor_slots.true

execute if data entity @s Inventory[{Slot:102b}].tag.armorsets{type:"major"} run tag @s add armorsets.refresh_minor_slots.true
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run data modify storage armorsets:data current_set set from entity @s Inventory[{Slot:102b}].tag.armorsets
execute if entity @s[tag=armorsets.refresh_minor_slots.true] store result score @s armorsets.chestset run data get entity @s Inventory[{Slot:102b}].tag.armorsets.set_id
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run function armorsets:functionality/slot_data/apply_set
tag @s remove armorsets.refresh_minor_slots.true

execute if data entity @s Inventory[{Slot:101b}].tag.armorsets{type:"major"} run tag @s add armorsets.refresh_minor_slots.true
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run data modify storage armorsets:data current_set set from entity @s Inventory[{Slot:101b}].tag.armorsets
execute if entity @s[tag=armorsets.refresh_minor_slots.true] store result score @s armorsets.legsset run data get entity @s Inventory[{Slot:101b}].tag.armorsets.set_id
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run function armorsets:functionality/slot_data/apply_set
tag @s remove armorsets.refresh_minor_slots.true

execute if data entity @s Inventory[{Slot:100b}].tag.armorsets{type:"major"} run tag @s add armorsets.refresh_minor_slots.true
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run data modify storage armorsets:data current_set set from entity @s Inventory[{Slot:100b}].tag.armorsets
execute if entity @s[tag=armorsets.refresh_minor_slots.true] store result score @s armorsets.feetset run data get entity @s Inventory[{Slot:100b}].tag.armorsets.set_id
execute if entity @s[tag=armorsets.refresh_minor_slots.true] run function armorsets:functionality/slot_data/apply_set
tag @s remove armorsets.refresh_minor_slots.true

