#
#   Clear Minor Armor
#   
#   Purpose: To clear all minor pieces of armor
#
#   Input: None
#


execute if predicate armorsets:legs/has_minor_head run item modify entity @s armor.head armorsets:remove_item
execute if predicate armorsets:legs/has_minor_chest run item modify entity @s armor.chest armorsets:remove_item
execute if predicate armorsets:legs/has_minor_feet run item modify entity @s armor.feet armorsets:remove_item

tag @s remove armorsets.legs.base

