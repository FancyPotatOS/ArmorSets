#
#   Inventory Changed - With No Head Base
#   
#   Purpose: To account for unequipping a base helmet armor item when I have the corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:head/inv_changed_no_base

tag @s remove armorsets.head.base
scoreboard players reset @s armorsets.headset

function armorsets:equipment/minor/refresh


