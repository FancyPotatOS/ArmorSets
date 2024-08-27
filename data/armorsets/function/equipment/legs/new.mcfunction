#
#   New Leg Item Equipped
#   
#   Purpose: To result a new base legs item equipped
#
#   Input: None
#


function armorsets:equipment/legs/ensure_set
execute store result score @s armorsets.legsset run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".armorsets.set

# Resolve if the legs set is conflicting with another
tag @s remove armorsets.conflicted
function armorsets:equipment/legs/detect_conflict
execute if entity @s[tag=armorsets.conflicted] run return run function armorsets:equipment/legs/conflicted

# Mark that it's accounted for
tag @s add armorsets.legs.base

# Remove vanilla armor items that conflict with this armor set
execute if predicate armorsets:legs/has_minor_head if predicate armorsets:head/equipped run function armorsets:equipment/head/remove
execute if predicate armorsets:legs/has_minor_chest if predicate armorsets:chest/equipped run function armorsets:equipment/chest/remove
execute if predicate armorsets:legs/has_minor_feet if predicate armorsets:feet/equipped run function armorsets:equipment/feet/remove


function armorsets:equipment/minor/refresh

