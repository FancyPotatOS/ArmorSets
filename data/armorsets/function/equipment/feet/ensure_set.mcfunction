#
#   Ensure Set Designation
#   
#   Purpose: To ensure that the feet item has a set number
#
#   Input: None
#


execute if data entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".armorsets.set run return 0

execute store result storage armorsets:data set int 1 run random value 1..

item modify entity @s armor.feet armorsets:copy_set_value



