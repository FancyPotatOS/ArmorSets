#
#   Apply Minor Head Item
#   
#   Purpose: To apply the minor head piece
#
#   Input: storage armorsets:data armor_sets.head
#

tag @s add armorsets.head.minor

# Summon an armorstand which we will replace the target slot with
summon armor_stand ~ ~ ~ {NoAI:1b,Tags:["armorsets.armor_stand.temp"],equipment:{mainhand:{id:"minecraft:leather_helmet",count:1b}}}
# @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]

data remove storage armorsets:data item
data merge storage armorsets:data {item:{}}

data modify storage armorsets:data item set from storage armorsets:data armor_sets.head

data modify entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] equipment.mainhand set from storage armorsets:data item

item replace entity @s armor.head from entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand

execute unless data storage armorsets:data item{binding:0b} run item modify entity @s armor.head armorsets:add_binding
execute unless data storage armorsets:data item{vanishing:0b} run item modify entity @s armor.head armorsets:add_vanishing
execute unless data storage armorsets:data item{unbreakable:0b} run item modify entity @s armor.head armorsets:add_unbreakable
execute if data storage armorsets:data item{unbreakable:0b} run item modify entity @s armor.head armorsets:hide_enchantment_info

item modify entity @s armor.head armorsets:flag_minor

kill @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]




