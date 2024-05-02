#
#   Swap Chest Set
#   
#   Purpose: To check if chestset was swapped
#
#   Input: None
#


execute unless entity @s[tag=armorsets.chest_equipped] run say no chest equipped
execute unless entity @s[tag=armorsets.chest_equipped] run return 0

scoreboard players operation temp armorsets.chestset = @s armorsets.chestset
execute store result score @s armorsets.chestset run data get entity @s Inventory[{Slot:102b}].tag.armorsets.set_id

execute if score temp armorsets.chestset = @s armorsets.chestset run say sameset
execute if score temp armorsets.chestset = @s armorsets.chestset run return 0

say swapped

function armorsets:functionality/slot_data/refresh_all_minor_slots
