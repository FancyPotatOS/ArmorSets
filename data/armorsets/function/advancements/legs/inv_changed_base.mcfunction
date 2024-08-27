#
#   Inventory Changed - Legs Base
#   
#   Purpose: To account for equipping a base leg armor item with no corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:legs/inv_changed_base

execute if entity @s[tag=armorsets.advancements.legs.new] run return 0

scoreboard players set temp armorsets.legsset -1
execute store result score temp armorsets.legsset run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".armorsets.set

execute if score @s armorsets.legsset = temp armorsets.legsset run return 0

execute unless entity @s[tag=armorsets.legs.base] run tag @s add armorsets.advancements.legs.new

execute if entity @s[tag=armorsets.advancements.legs.new] run function armorsets:equipment/legs/new
execute unless entity @s[tag=armorsets.advancements.legs.new] run function armorsets:equipment/legs/swapped

tag @s remove armorsets.advancements.legs.new
tag @s remove armorsets.conflicted



