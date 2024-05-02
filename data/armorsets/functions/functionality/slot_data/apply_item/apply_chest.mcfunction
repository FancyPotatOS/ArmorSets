#
#   Apply Item To Chest Slot
#   
#   Purpose: To create an entirely new item onto the chest slot
#
#   Input: None
#


function armorsets:functionality/slot_data/clear_vanilla_item/chest

data modify storage armorsets:data item set from storage armorsets:data current_set.replacements.chest

#tellraw @p {"nbt":"item","storage":"armorsets:data"}

summon armor_stand ~ ~ ~ {Tags:["armorsets.armor_stand.temp"],Invisible:1b}

item replace entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand with wooden_hoe
data modify entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] HandItems[0] merge from storage armorsets:data item

item replace entity @s armor.chest from entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand

execute unless data storage armorsets:data current_set.replacements.chest{override_binding:1b} run item modify entity @s armor.chest armorsets:item_storage/add_binding
execute unless data storage armorsets:data current_set.replacements.chest{override_vanishing:1b} run item modify entity @s armor.chest armorsets:item_storage/add_vanishing
execute unless data storage armorsets:data current_set.replacements.chest{override_unbreakable:1b} run item modify entity @s armor.chest armorsets:item_storage/add_unbreakable

item modify entity @s armor.chest armorsets:item_storage/add_minor

kill @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]

