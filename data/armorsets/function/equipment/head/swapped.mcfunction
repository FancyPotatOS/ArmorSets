#
#   New Head Item Equipped
#   
#   Purpose: To result a new base head item equipped
#
#   Input: None
#


function armorsets:equipment/head/ensure_set
execute store result score @s armorsets.headset run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".armorsets.set

tag @s add armorsets.head.except
function armorsets:equipment/minor/refresh
tag @s remove armorsets.head.except

# Resolve if the head set is conflicting with another
tag @s remove armorsets.conflicted
function armorsets:equipment/head/detect_conflict
execute if entity @s[tag=armorsets.conflicted] run return run function armorsets:equipment/head/conflicted

# Mark that it's accounted for
tag @s add armorsets.head.base

# Remove vanilla armor items that conflict with this armor set
execute if predicate armorsets:head/has_minor_chest if predicate armorsets:chest/equipped run function armorsets:equipment/chest/remove
execute if predicate armorsets:head/has_minor_legs if predicate armorsets:legs/equipped run function armorsets:equipment/legs/remove
execute if predicate armorsets:head/has_minor_feet if predicate armorsets:feet/equipped run function armorsets:equipment/feet/remove


function armorsets:equipment/minor/refresh

