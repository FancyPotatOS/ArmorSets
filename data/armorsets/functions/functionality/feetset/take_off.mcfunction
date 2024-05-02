#
#   Put On Feet Set
#   
#   Purpose: To check if new feetset was unequipped
#
#   Input: None
#


tag @s remove armorsets.feet_equipped
scoreboard players reset @s armorsets.feetset

function armorsets:functionality/slot_data/refresh_all_minor_slots

