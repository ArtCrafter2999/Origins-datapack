effect give @s saturation 2 2 true
execute if entity @s[tag=lich] run effect give @s regeneration 4 1
execute if entity @s[tag=lich] run experience add @s 80 points
execute if entity @s[tag=!lich] run effect give @s poison 6 0
tag @s add lich-has-bottle