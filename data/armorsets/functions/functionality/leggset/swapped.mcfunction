#
#   Swap Legs Set
#   
#   Purpose: To check if legsset was swapped
#
#   Input: None
#


execute unless entity @s[tag=armorsets.legs_equipped] run return 0

scoreboard players operation temp armorsets.legsset = @s armorsets.legsset
execute store result score @s armorsets.legsset run data get entity @s Inventory[{Slot:101b}].tag.armorsets.set_id

execute if score temp armorsets.legsset = @s armorsets.legsset run return 0
execute if score temp armorsets.legsset = @s armorsets.legsset run return 0

function armorsets:functionality/slot_data/refresh_all_minor_slots
