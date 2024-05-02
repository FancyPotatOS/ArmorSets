#
#   Put On Chest Set
#   
#   Purpose: To check if new chestset was unequipped
#
#   Input: None
#


tag @s remove armorsets.chest_equipped
scoreboard players reset @s armorsets.chestset

#say take off

function armorsets:functionality/slot_data/refresh_all_minor_slots

