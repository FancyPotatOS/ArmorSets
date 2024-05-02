#
#   Swap Head Set
#   
#   Purpose: To check if headset was swapped
#
#   Input: None
#


execute unless entity @s[tag=armorsets.head_equipped] run return 0

scoreboard players operation temp armorsets.headset = @s armorsets.headset
execute store result score @s armorsets.headset run data get entity @s Inventory[{Slot:103b}].tag.armorsets.set_id

execute if score temp armorsets.headset = @s armorsets.headset run return 0
execute if score temp armorsets.headset = @s armorsets.headset run return 0

function armorsets:functionality/slot_data/refresh_all_minor_slots
