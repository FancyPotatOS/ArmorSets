#
#   Inventory Changed - With No Chest Base
#   
#   Purpose: To account for unequipping a base chestplate armor item when I have the corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:chest/inv_changed_no_base

tag @s remove armorsets.chest.base
scoreboard players reset @s armorsets.chestset

function armorsets:equipment/minor/refresh


