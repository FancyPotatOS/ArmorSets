#
#   Swap Feet Set
#   
#   Purpose: To check if feetset was swapped
#
#   Input: None
#


execute unless entity @s[tag=armorsets.feet_equipped] run return 0

scoreboard players operation temp armorsets.feetset = @s armorsets.feetset
execute store result score @s armorsets.feetset run data get entity @s Inventory[{Slot:100b}].tag.armorsets.set_id

execute if score temp armorsets.feetset = @s armorsets.feetset run return 0
execute if score temp armorsets.feetset = @s armorsets.feetset run return 0

function armorsets:functionality/slot_data/refresh_all_minor_slots
