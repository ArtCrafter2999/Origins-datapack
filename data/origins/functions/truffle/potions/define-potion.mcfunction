#speed
execute if entity @s[tag=sugar] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:1,Duration:3600, Amplifier:0}]
execute if entity @s[tag=sugar] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Speed","italic":false,"color":"purple"}]'
#slowness
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:2,Duration:1800, Amplifier:0}]
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Slowness","italic":false,"color":"purple"}]'
execute if entity @s[tag=rabbit, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:2,Duration:1800, Amplifier:0}]
execute if entity @s[tag=rabbit, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Slowness","italic":false,"color":"purple"}]'
#jump boost
execute if entity @s[tag=rabbit] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:8,Duration:3600, Amplifier:0}]
execute if entity @s[tag=rabbit] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Jump Boost","italic":false,"color":"purple"}]'
#strength
execute if entity @s[tag=blaze_powder] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:5,Duration:3600, Amplifier:0}]
execute if entity @s[tag=blaze_powder] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Strength","italic":false,"color":"purple"}]'
#Instant Health
execute if entity @s[tag=melon] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:6, Amplifier:0}]
execute if entity @s[tag=melon] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Instant Health","italic":false,"color":"purple"}]'
#Instant Damage
execute if entity @s[tag=melon, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:7, Amplifier:0}]
execute if entity @s[tag=melon, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Instant Damage","italic":false,"color":"purple"}]'
execute if entity @s[tag=eye, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:7, Amplifier:0}]
execute if entity @s[tag=eye, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Instant Damage","italic":false,"color":"purple"}]'
#Poison
execute if entity @s[tag=eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:19,Duration:900, Amplifier:0}]
execute if entity @s[tag=eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Poison","italic":false,"color":"purple"}]'
#Regeneration
execute if entity @s[tag=tear] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:10,Duration:900, Amplifier:0}]
execute if entity @s[tag=tear] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Regeneration","italic":false,"color":"purple"}]'
#Fire Resistance
execute if entity @s[tag=cream] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:12,Duration:3600, Amplifier:0}]
execute if entity @s[tag=cream] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Fire Resistance","italic":false,"color":"purple"}]'
#Water Breathing
execute if entity @s[tag=fish] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:13,Duration:3600, Amplifier:0}]
execute if entity @s[tag=fish] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Water Breathing","italic":false,"color":"purple"}]'
#Night Vision
execute if entity @s[tag=carrot] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:16,Duration:3600, Amplifier:0}]
execute if entity @s[tag=carrot] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Night Vision","italic":false,"color":"purple"}]'
#Invisibility
execute if entity @s[tag=carrot, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:14,Duration:3600, Amplifier:0}]
execute if entity @s[tag=carrot, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Invisibility","italic":false,"color":"purple"}]'
#Turtle
execute if entity @s[tag=scute] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:2,Duration:400, Amplifier:3}, {Id:23, Duration:400, Amplifier:2}]
execute if entity @s[tag=scute] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Turtle Master","italic":false,"color":"purple"}]'
#Slow Falling
execute if entity @s[tag=membrane] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:28,Duration:3600, Amplifier:0}]
execute if entity @s[tag=membrane] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Slow Falling","italic":false,"color":"purple"}]'
#Weakness
execute if entity @s[tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects set value [{Id:18,Duration:3600, Amplifier:0}]
execute if entity @s[tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.display.Name set value '[{"text":"Potion of Weakness","italic":false,"color":"purple"}]'

