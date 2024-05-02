#
#   Check For Conflicting Slots
#   
#   Purpose: To check if provided armor set conflicts with minor pieces of another set
#
#   Input: Storage armorsets:data current_set
#
#   Returns: 1 if there is conflicting slots in the armor set compared to others
#


# Minor items check
execute if data storage armorsets:data current_set.replacements.head if entity @s[tag=armorsets.head_equipped_minor] run return 1

execute if data storage armorsets:data current_set.replacements.chest if entity @s[tag=armorsets.chest_equipped_minor] run return 1

execute if data storage armorsets:data current_set.replacements.legs if entity @s[tag=armorsets.legs_equipped_minor] run return 1

execute if data storage armorsets:data current_set.replacements.feet if entity @s[tag=armorsets.feet_equipped_minor] run return 1

# Major items check
execute if data storage armorsets:data current_set.replacements.head if entity @s[tag=armorsets.head_equipped] run return 1

execute if data storage armorsets:data current_set.replacements.chest if entity @s[tag=armorsets.chest_equipped] run return 1

execute if data storage armorsets:data current_set.replacements.legs if entity @s[tag=armorsets.legs_equipped] run return 1

execute if data storage armorsets:data current_set.replacements.feet if entity @s[tag=armorsets.feet_equipped] run return 1

