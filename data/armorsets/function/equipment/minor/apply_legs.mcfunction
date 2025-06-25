#
#   Apply Minor Legs Item
#   
#   Purpose: To apply the minor legs piece
#
#   Input: storage armorsets:data armor_sets.legs
#


tag @s add armorsets.legs.minor

# Summon an armorstand which we will replace the target slot with
summon armor_stand ~ ~ ~ {NoAI:1b,Tags:["armorsets.armor_stand.temp"],equipment:{mainhand:{id:"minecraft:leather_leggings",count:1b}}}
# @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]

data remove storage armorsets:data item
data merge storage armorsets:data {item:{}}

data modify storage armorsets:data item set from storage armorsets:data armor_sets.legs

data modify entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] equipment.mainhand set from storage armorsets:data item

item replace entity @s armor.legs from entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand

execute unless data storage armorsets:data item{binding:0b} run item modify entity @s armor.legs armorsets:add_binding
execute unless data storage armorsets:data item{vanishing:0b} run item modify entity @s armor.legs armorsets:add_vanishing
execute unless data storage armorsets:data item{unbreakable:0b} run item modify entity @s armor.legs armorsets:add_unbreakable
execute if data storage armorsets:data item{unbreakable:0b} run item modify entity @s armor.legs armorsets:hide_enchantment_info

item modify entity @s armor.legs armorsets:flag_minor

kill @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]




