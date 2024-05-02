#
#   Apply Item To Chest Slot
#   
#   Purpose: To create an entirely new item onto the chest slot
#
#   Input: Storage armorsets:data item
#


data modify storage armorsets:data input set value {}


# Set particular item
data modify storage armorsets:data input.slot set value "chest"
data modify storage armorsets:data input.item set from storage armorsets:data current_set.replacements.chest.id
function armorsets:functionality/slot_data/apply_item/apply_to_slot with storage armorsets:data input

data modify storage armorsets:data item set from storage armorsets:data current_set.replacements.chest

execute unless data storage armorsets:data current_set.replacements.chest{override_binding:1b} run item modify entity @s armor.chest armorsets:item_storage/add_binding
execute unless data storage armorsets:data current_set.replacements.chest{override_vanishing:1b} run item modify entity @s armor.chest armorsets:item_storage/add_vanishing
execute unless data storage armorsets:data current_set.replacements.chest{override_unbreakable:1b} run item modify entity @s armor.chest armorsets:item_storage/add_unbreakable

item modify entity @s armor.chest armorsets:item_storage/add_minor

# Move over the data
item modify entity @s armor.chest armorsets:item_storage/item_to_item
