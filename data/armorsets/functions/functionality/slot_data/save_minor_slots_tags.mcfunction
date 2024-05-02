#
#   Save Minor Slots
#   
#   Purpose: To add all tags of minor slots in current set
#
#   Input: Storage armorsets:data current_set
#


execute if data storage armorsets:data current_set.replacements.head run tag @s add armorsets.head_equipped_minor

execute if data storage armorsets:data current_set.replacements.chest run tag @s add armorsets.chest_equipped_minor

execute if data storage armorsets:data current_set.replacements.legs run tag @s add armorsets.legs_equipped_minor

execute if data storage armorsets:data current_set.replacements.feet run tag @s add armorsets.feet_equipped_minor

