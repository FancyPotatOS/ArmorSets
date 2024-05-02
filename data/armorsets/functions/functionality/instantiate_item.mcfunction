#
#   Instantiate item
#   
#   Purpose: To summon provided item as an entity
#
#   Input: storage armorsets:data physical_item
#


summon item ~ ~ ~ {Tags:["armorsets.physical_item.new"],PickupDelay:1,Age:0,Item:{id:"minecraft:cobbled_deepslate",Count:1b}}

data modify entity @e[type=item,tag=armorsets.physical_item.new,limit=1] Item set from storage armorsets:data physical_item

tag @e[type=item,tag=armorsets.physical_item.new] remove armorsets.physical_item.new
