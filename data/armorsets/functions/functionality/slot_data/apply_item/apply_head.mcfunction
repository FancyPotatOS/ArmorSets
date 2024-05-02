#
#   Apply Item To Head Slot
#   
#   Purpose: To create an entirely new item onto the head slot
#
#   Input: None
#


data modify storage armorsets:data item set from storage armorsets:data current_set.replacements.head

tellraw @p {"nbt":"item","storage":"armorsets:data"}

summon armor_stand ~ ~ ~ {Tags:["armorsets.armor_stand.temp"]}

item replace entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand with wooden_hoe
data modify entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] HandItems[0] merge from storage armorsets:data item

item replace entity @s armor.head from entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand

execute unless data storage armorsets:data current_set.replacements.head{override_binding:1b} run item modify entity @s armor.head armorsets:item_storage/add_binding
execute unless data storage armorsets:data current_set.replacements.head{override_vanishing:1b} run item modify entity @s armor.head armorsets:item_storage/add_vanishing
execute unless data storage armorsets:data current_set.replacements.head{override_unbreakable:1b} run item modify entity @s armor.head armorsets:item_storage/add_unbreakable

item modify entity @s armor.head armorsets:item_storage/add_minor

kill @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]

return 0
## OLD functionality

data modify storage armorsets:data input set value {}


# Set particular item
data modify storage armorsets:data input.slot set value "head"
data modify storage armorsets:data input.item set from storage armorsets:data current_set.replacements.head.id
function armorsets:functionality/slot_data/apply_item/apply_to_slot with storage armorsets:data input

data modify storage armorsets:data item set from storage armorsets:data current_set.replacements.head

# Move over the data
item modify entity @s armor.head armorsets:item_storage/item_to_item
