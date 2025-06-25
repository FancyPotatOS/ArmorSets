#
#   Inventory Changed - Head Base
#   
#   Purpose: To account for equipping a base head armor item with no corresponding tag
#
#   Input: None
#

advancement revoke @s only armorsets:head/inv_changed_base

execute if entity @s[tag=armorsets.advancements.head.new] run return 0

scoreboard players set temp armorsets.headset -1
execute store result score temp armorsets.headset run data get entity @s equipment.head.components."minecraft:custom_data".armorsets.set

execute if score @s armorsets.headset = temp armorsets.headset run return 0

execute unless entity @s[tag=armorsets.head.base] run tag @s add armorsets.advancements.head.new

execute if entity @s[tag=armorsets.advancements.head.new] run function armorsets:equipment/head/new
execute unless entity @s[tag=armorsets.advancements.head.new] run function armorsets:equipment/head/swapped

tag @s remove armorsets.advancements.head.new
tag @s remove armorsets.conflicted



