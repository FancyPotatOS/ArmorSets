#
#   Save First Enderchest Item
#   
#   Purpose: To save the first item in player's enderchest to a storage value
#
#   Input: Storage armorsets:data current_set
#


data modify storage armorsets:data enderchest set value {none:1b}
data modify storage armorsets:data enderchest set from entity @s EnderItems[{Slot:0b}]

