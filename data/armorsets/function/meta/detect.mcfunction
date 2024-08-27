
execute unless score version.armorsets fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Armor Sets Datapack ","color":"blue"},"(",{"text":"Overlapping versions.","italic":true,"color":"dark_aqua"},")"]
