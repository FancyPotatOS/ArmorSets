#
#   Apply Minor Feet Item
#   
#   Purpose: To apply the minor feet piece
#
#   Input: storage armorsets:data armor_sets.feet
#


tag @s add armorsets.feet.minor

# Summon an armorstand which we will replace the target slot with
summon armor_stand ~ ~ ~ {NoAI:1b,Tags:["armorsets.armor_stand.temp"],HandItems:[{id:"minecraft:leather_boots",count:1b},{}]}
# @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]

data remove storage armorsets:data item
data merge storage armorsets:data {item:{}}

data modify storage armorsets:data item set from storage armorsets:data armor_sets.feet

data modify entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] HandItems[0] set from storage armorsets:data item

item replace entity @s armor.feet from entity @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1] weapon.mainhand

item modify entity @s armor.feet armorsets:hide_enchantment_info
execute unless data storage armorsets:data item{binding:0b} run item modify entity @s armor.feet armorsets:add_binding
execute unless data storage armorsets:data item{vanishing:0b} run item modify entity @s armor.feet armorsets:add_vanishing
execute unless data storage armorsets:data item{unbreakable:0b} run item modify entity @s armor.feet armorsets:add_unbreakable

item modify entity @s armor.feet armorsets:flag_minor

kill @e[type=armor_stand,tag=armorsets.armor_stand.temp,limit=1]




