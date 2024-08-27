#
#   Detect Chest Armor Set Conflict
#   
#   Purpose: To tag the player with 'armorsets.conflicted' if the item conflicts with another item
#
#   Input: None
#


# If not a base chestplate item
execute unless predicate armorsets:chest/is_base run return 1


# Whether has declaration of minor piece that is already a set item

execute if predicate armorsets:chest/has_minor_head if entity @s[tag=armorsets.head.minor] run tag @s add armorsets.conflicted
execute if predicate armorsets:chest/has_minor_legs if entity @s[tag=armorsets.legs.minor] run tag @s add armorsets.conflicted
execute if predicate armorsets:chest/has_minor_feet if entity @s[tag=armorsets.feet.minor] run tag @s add armorsets.conflicted




