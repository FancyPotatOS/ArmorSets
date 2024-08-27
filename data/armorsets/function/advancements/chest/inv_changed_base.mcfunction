#
#   Inventory Changed - Chest Base
#   
#   Purpose: To account for equipping a base chestplate armor item with no corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:chest/inv_changed_base

execute if entity @s[tag=armorsets.advancements.chest.new] run return 0

scoreboard players set temp armorsets.chestset -1
execute store result score temp armorsets.chestset run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".armorsets.set

execute if score @s armorsets.chestset = temp armorsets.chestset run return 0

execute unless entity @s[tag=armorsets.chest.base] run tag @s add armorsets.advancements.chest.new

execute if entity @s[tag=armorsets.advancements.chest.new] run function armorsets:equipment/chest/new
execute unless entity @s[tag=armorsets.advancements.chest.new] run function armorsets:equipment/chest/swapped

tag @s remove armorsets.advancements.chest.new
tag @s remove armorsets.conflicted



