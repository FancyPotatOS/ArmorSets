#
#   Put On Head Set
#   
#   Purpose: To check if new headset was unequipped
#
#   Input: None
#


tag @s remove armorsets.head_equipped
scoreboard players reset @s armorsets.headset

function armorsets:functionality/slot_data/refresh_all_minor_slots

