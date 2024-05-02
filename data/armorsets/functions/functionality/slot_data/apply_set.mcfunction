#
#   Apply Armor Set 
#   
#   Purpose: To add all tags and items of provided set
#
#   Input: Storage armorsets:data current_set
#


# Save tags
function armorsets:functionality/slot_data/save_minor_slots_tags

# Save items
execute if data storage armorsets:data current_set.replacements.head run function armorsets:functionality/slot_data/apply_item/apply_head
execute if data storage armorsets:data current_set.replacements.chest run function armorsets:functionality/slot_data/apply_item/apply_chest
execute if data storage armorsets:data current_set.replacements.legs run function armorsets:functionality/slot_data/apply_item/apply_legs
execute if data storage armorsets:data current_set.replacements.feet run function armorsets:functionality/slot_data/apply_item/apply_feet

