#8 min
data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 14400
#4 min
execute if entity @s[tag=rabbit, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 7200
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 7200
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 7200
execute if entity @s[tag=sugar, tag=fermented_eye] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 7200
#1:30 min
execute if entity @s[tag=fermented_eye, tag=!carrot, tag=!eye, tag=!melon, tag=!rabbit, tag=!sugar] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 2700
execute if entity @s[tag=melon] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 2700
#40 sec (turtle)
execute if entity @s[tag=scute] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[0].Duration set value 1200
execute if entity @s[tag=scute] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.tag.CustomPotionEffects[1].Duration set value 1200
