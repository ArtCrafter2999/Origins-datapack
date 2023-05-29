#everything else
data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Amplifier set value 2
data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 1800
#slowness
execute if entity @s[tag=rabbit, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Amplifier set value 4
execute if entity @s[tag=rabbit, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 400
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Amplifier set value 4
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 400
#poison
execute if entity @s[tag=spider_eye, tag=!fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 420
#regeneration
execute if entity @s[tag=tear] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 420
#turtle
execute if entity @s[tag=scute] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[1].Amplifier set value 4