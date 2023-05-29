tag @s remove evoker.new_area
execute as @s store result entity @s Rotation[0] float 0.01 run data get entity @e[type=minecraft:player,sort=nearest,limit=1,distance=0..1] Rotation[0] 100
tp @s ~ ~2 ~
execute at @s positioned ^0.5 ^ ^1 run summon marker ~ ~ ~ {Tags:["evoker.0","evoker.area","evoker.area_tracker"]}