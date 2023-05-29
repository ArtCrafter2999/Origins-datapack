#8 min
data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 9600
execute if entity @s[tag=fermented_eye, tag=!carrot, tag=!eye, tag=!melon, tag=!rabbit, tag=!sugar] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 1800
#4 min
execute if entity @s[tag=rabbit, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 4800 
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 4800
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 4800
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 4800
#1:30 min
execute if entity @s[tag=melon] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 1800
#40 sec (turtle)
execute if entity @s[tag=scute] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 800
execute if entity @s[tag=scute] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[1].Duration set value 800
