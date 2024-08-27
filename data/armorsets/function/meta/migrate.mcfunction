
# Ensure the master scoreboard exists
scoreboard objectives add armorsets.master dummy

# Apply migration if required
execute unless score version armorsets.master matches 1.. run function armorsets:meta/migrations/latest_version
