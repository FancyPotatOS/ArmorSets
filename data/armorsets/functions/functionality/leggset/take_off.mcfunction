#
#   Put On Legs Set
#   
#   Purpose: To check if new legsset was unequipped
#
#   Input: None
#


tag @s remove armorsets.legs_equipped
scoreboard players reset @s armorsets.legsset

function armorsets:functionality/slot_data/refresh_all_minor_slots

