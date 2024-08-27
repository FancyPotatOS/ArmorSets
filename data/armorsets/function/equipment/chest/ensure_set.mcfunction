#
#   Ensure Set Designation
#   
#   Purpose: To ensure that the chest item has a set number
#
#   Input: None
#


execute if data entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".armorsets.set run return 0

execute store result storage armorsets:data set int 1 run random value 1..

item modify entity @s armor.chest armorsets:copy_set_value



