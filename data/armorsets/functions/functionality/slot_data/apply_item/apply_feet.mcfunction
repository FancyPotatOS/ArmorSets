#
#   Apply Item To Feet Slot
#   
#   Purpose: To create an entirely new item onto the feet slot
#
#   Input: None
#


function armorsets:functionality/slot_data/clear_vanilla_item/feet

data modify storage armorsets:data item set from storage armorsets:data current_set.replacements.feet

#tellraw @p {"nbt":"item","storage":"armorsets:data"}

summon armor_stand ~ ~ ~ {Tags:["armorsets.armor_stand.temp"],Invisible:1b}

item replace entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand with wooden_hoe
data modify entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] HandItems[0] merge from storage armorsets:data item

item replace entity @s armor.feet from entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand

execute unless data storage armorsets:data current_set.replacements.feet{override_binding:1b} run item modify entity @s armor.feet armorsets:item_storage/add_binding
execute unless data storage armorsets:data current_set.replacements.feet{override_vanishing:1b} run item modify entity @s armor.feet armorsets:item_storage/add_vanishing
execute unless data storage armorsets:data current_set.replacements.feet{override_unbreakable:1b} run item modify entity @s armor.feet armorsets:item_storage/add_unbreakable

item modify entity @s armor.feet armorsets:item_storage/add_minor

kill @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]

