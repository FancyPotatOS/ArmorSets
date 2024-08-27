#
#   Clear Minor Armor
#   
#   Purpose: To fully remove minor armor pieces
#
#   Input: None
#



# Remove minor items
execute if predicate armorsets:head/is_minor run item modify entity @s armor.head armorsets:remove_item
execute if predicate armorsets:chest/is_minor run item modify entity @s armor.chest armorsets:remove_item
execute if predicate armorsets:legs/is_minor run item modify entity @s armor.legs armorsets:remove_item
execute if predicate armorsets:feet/is_minor run item modify entity @s armor.feet armorsets:remove_item

