#
#   Refresh Minor Armor
#   
#   Purpose: To fully reset minor armor pieces
#
#   Input: None
#


# Reset storage data
data remove storage armorsets:data armor_sets
data merge storage armorsets:data {armor_sets:{}}

# Clear values
function armorsets:equipment/minor/clear_tags
function armorsets:equipment/minor/clear

# Check all minor possiblities and store info
execute unless entity @e[tag=armorsets.head.except] if predicate armorsets:head/has_minor_head run data modify storage armorsets:data armor_sets.head set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".armorsets.set_items.head
execute unless entity @e[tag=armorsets.head.except] if predicate armorsets:head/has_minor_chest run data modify storage armorsets:data armor_sets.chest set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".armorsets.set_items.chest
execute unless entity @e[tag=armorsets.head.except] if predicate armorsets:head/has_minor_legs run data modify storage armorsets:data armor_sets.legs set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".armorsets.set_items.legs
execute unless entity @e[tag=armorsets.head.except] if predicate armorsets:head/has_minor_feet run data modify storage armorsets:data armor_sets.feet set from entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".armorsets.set_items.feet

execute unless entity @e[tag=armorsets.chest.except] if predicate armorsets:chest/has_minor_head run data modify storage armorsets:data armor_sets.head set from entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".armorsets.set_items.head
execute unless entity @e[tag=armorsets.chest.except] if predicate armorsets:chest/has_minor_chest run data modify storage armorsets:data armor_sets.chest set from entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".armorsets.set_items.chest
execute unless entity @e[tag=armorsets.chest.except] if predicate armorsets:chest/has_minor_legs run data modify storage armorsets:data armor_sets.legs set from entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".armorsets.set_items.legs
execute unless entity @e[tag=armorsets.chest.except] if predicate armorsets:chest/has_minor_feet run data modify storage armorsets:data armor_sets.feet set from entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".armorsets.set_items.feet

execute unless entity @e[tag=armorsets.legs.except] if predicate armorsets:legs/has_minor_head run data modify storage armorsets:data armor_sets.head set from entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".armorsets.set_items.head
execute unless entity @e[tag=armorsets.legs.except] if predicate armorsets:legs/has_minor_chest run data modify storage armorsets:data armor_sets.chest set from entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".armorsets.set_items.chest
execute unless entity @e[tag=armorsets.legs.except] if predicate armorsets:legs/has_minor_legs run data modify storage armorsets:data armor_sets.legs set from entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".armorsets.set_items.legs
execute unless entity @e[tag=armorsets.legs.except] if predicate armorsets:legs/has_minor_feet run data modify storage armorsets:data armor_sets.feet set from entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".armorsets.set_items.feet

execute unless entity @e[tag=armorsets.feet.except] if predicate armorsets:feet/has_minor_head run data modify storage armorsets:data armor_sets.head set from entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".armorsets.set_items.head
execute unless entity @e[tag=armorsets.feet.except] if predicate armorsets:feet/has_minor_chest run data modify storage armorsets:data armor_sets.chest set from entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".armorsets.set_items.chest
execute unless entity @e[tag=armorsets.feet.except] if predicate armorsets:feet/has_minor_legs run data modify storage armorsets:data armor_sets.legs set from entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".armorsets.set_items.legs
execute unless entity @e[tag=armorsets.feet.except] if predicate armorsets:feet/has_minor_feet run data modify storage armorsets:data armor_sets.feet set from entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".armorsets.set_items.feet


# Apply gathered minor information
execute unless entity @e[tag=armorsets.head.except] if data storage armorsets:data armor_sets.head run function armorsets:equipment/minor/apply_head
execute unless entity @e[tag=armorsets.chest.except] if data storage armorsets:data armor_sets.chest run function armorsets:equipment/minor/apply_chest
execute unless entity @e[tag=armorsets.legs.except] if data storage armorsets:data armor_sets.legs run function armorsets:equipment/minor/apply_legs
execute unless entity @e[tag=armorsets.feet.except] if data storage armorsets:data armor_sets.feet run function armorsets:equipment/minor/apply_feet

