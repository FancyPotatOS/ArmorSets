#
#   Swapped Chestplate Equipped
#   
#   Purpose: To result a new base chestplate item equipped
#
#   Input: None
#


function armorsets:equipment/chest/ensure_set
execute store result score @s armorsets.chestset run data get entity @s equipment.chest.components."minecraft:custom_data".armorsets.set

tag @s add armorsets.chest.except
function armorsets:equipment/minor/refresh
tag @s remove armorsets.chest.except

# Resolve if the chest set is conflicting with another
tag @s remove armorsets.conflicted
function armorsets:equipment/chest/detect_conflict
execute if entity @s[tag=armorsets.conflicted] run return run function armorsets:equipment/chest/conflicted

# Mark that it's accounted for
tag @s add armorsets.chest.base

# Remove vanilla armor items that conflict with this armor set
execute if predicate armorsets:chest/has_minor_head if predicate armorsets:head/equipped run function armorsets:equipment/head/remove
execute if predicate armorsets:chest/has_minor_legs if predicate armorsets:legs/equipped run function armorsets:equipment/legs/remove
execute if predicate armorsets:chest/has_minor_feet if predicate armorsets:feet/equipped run function armorsets:equipment/feet/remove


function armorsets:equipment/minor/refresh

