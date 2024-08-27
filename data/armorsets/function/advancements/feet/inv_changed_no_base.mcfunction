#
#   Inventory Changed - With No Feet Base
#   
#   Purpose: To account for unequipping a base feet armor item when I have the corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:feet/inv_changed_no_base

tag @s remove armorsets.feet.base
scoreboard players reset @s armorsets.feetset

function armorsets:equipment/minor/refresh


