#
#   Inventory Changed - Feet Base
#   
#   Purpose: To account for equipping a base feet armor item with no corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:feet/inv_changed_base

execute if entity @s[tag=armorsets.advancements.feet.new] run return 0

scoreboard players set temp armorsets.feetset -1
execute store result score temp armorsets.feetset run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".armorsets.set

execute if score @s armorsets.feetset = temp armorsets.feetset run return 0

execute unless entity @s[tag=armorsets.feet.base] run tag @s add armorsets.advancements.feet.new

execute if entity @s[tag=armorsets.advancements.feet.new] run function armorsets:equipment/feet/new
execute unless entity @s[tag=armorsets.advancements.feet.new] run function armorsets:equipment/feet/swapped

tag @s remove armorsets.advancements.feet.new
tag @s remove armorsets.conflicted



