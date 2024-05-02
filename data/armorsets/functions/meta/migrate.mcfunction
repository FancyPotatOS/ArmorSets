
scoreboard objectives add armorsets.master dummy

execute unless score version armorsets.master matches 1.. run function armorsets:meta/migrations/latest_version
