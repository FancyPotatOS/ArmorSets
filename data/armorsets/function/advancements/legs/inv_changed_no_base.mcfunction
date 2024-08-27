#
#   Inventory Changed - With No Leg Base
#   
#   Purpose: To account for unequipping a base leg armor item when I have the corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:legs/inv_changed_no_base

tag @s remove armorsets.legs.base
scoreboard players reset @s armorsets.legsset

function armorsets:equipment/minor/refresh


