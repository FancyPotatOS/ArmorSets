


### How to use

The details of each part of the armor set is inside the custom_data component of the base item itself.


### Format

Components listed in _italics_ are internal and not to be messed with

Components listed in **bold** are required

Components that must be specific, select values will be listed in braces [ ... ]

Non-required components will have their default value in parenthesis

All data referenced is under the item path components.minecraft:custom_data.armorsets.*


<pre style="font-family: sans-serif;">
{
    <b>type</b>: [ <b>base</b>, <em>minor</em> ],
    <em>set</em>: 1..
    <b>set_items</b>: {
        [ head, chest, legs, feet ]: {
            <b>id</b>: "minecraft:diamond",
            unbreakable: [ 0b, 1b ] (1b),
            binding: [ 0b, 1b ] (1b),
            vanishing: [ 0b, 1b ] (1b)
            <em><b>... any item NBT data that can be directly inserted</b></em>
        }
    }
}
</pre>

### Example

Here is a give command for an entire spacesuit

```
/give @p minecraft:iron_chestplate
[
    minecraft:custom_name='["",{"text":"Spacesuit","italic":false,"color":"dark_purple","bold":true}]',
    minecraft:lore=[            '["",{"text":"The complete \'Spacesuit\' armorset","color":"gray"}]'        ],
    minecraft:custom_data= {
        armorsets: {
            type:"base",
            set_items: {
                head: {
                    id:"minecraft:glass",
                    components: {
                        "minecraft:custom_name":'["",{"text":"Helmet","color":"aqua"}]',
                        "minecraft:lore":['["",{"text":"Part of the \'Spacesuit\'","color":"gray"}]']
                    }
                },
                legs: {
                    id:"minecraft:iron_leggings",
                    "components": {
                        "minecraft:custom_name":'["",{"text":"Lower Torse Assembly","color":"aqua"}]',
                        "minecraft:lore":['["",{"text":"Part of the \'Spacesuit\'","color":"gray"}]']
                    }
                },
                feet: {
                    id:"minecraft:iron_boots",
                    "components": {
                        "minecraft:custom_name":'["",{"text":"Spacesuit Overshoe","color":"aqua"}]',
                        "minecraft:lore":['["",{"text":"Part of the \'Spacesuit\'","color":"gray"}]']
                    }
                }
            }
        }
    }
]
```


