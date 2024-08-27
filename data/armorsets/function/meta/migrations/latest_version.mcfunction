#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#

tellraw @a ["",{"text":"[Armor Sets Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score version armorsets.master matches 1.. run function armorsets:meta/migrate/migration_v0

# Set the version
scoreboard players set version armorsets.master 1

scoreboard objectives add armorsets.headset dummy
scoreboard objectives add armorsets.chestset dummy
scoreboard objectives add armorsets.legsset dummy
scoreboard objectives add armorsets.feetset dummy


