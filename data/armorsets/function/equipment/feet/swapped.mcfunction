#
#   New Feet Armor Equipped
#   
#   Purpose: To result a new base feet item equipped
#
#   Input: None
#


function armorsets:equipment/feet/ensure_set
execute store result score @s armorsets.feetset run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".armorsets.set

tag @s add armorsets.feet.except
function armorsets:equipment/minor/refresh
tag @s remove armorsets.feet.except

# Resolve if the feet set is conflicting with another
tag @s remove armorsets.conflicted
function armorsets:equipment/feet/detect_conflict
execute if entity @s[tag=armorsets.conflicted] run return run function armorsets:equipment/feet/conflicted

# Mark that it's accounted for
tag @s add armorsets.feet.base

# Remove vanilla armor items that conflict with this armor set
execute if predicate armorsets:feet/has_minor_head if predicate armorsets:head/equipped run function armorsets:equipment/head/remove
execute if predicate armorsets:feet/has_minor_chest if predicate armorsets:chest/equipped run function armorsets:equipment/chest/remove
execute if predicate armorsets:feet/has_minor_legs if predicate armorsets:legs/equipped run function armorsets:equipment/legs/remove


function armorsets:equipment/minor/refresh

