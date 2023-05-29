tag @s remove evoker.new
execute as @s store result entity @s Rotation[0] float 0.01 run data get entity @e[type=minecraft:player,sort=nearest,limit=1,distance=0..1] Rotation[0] 100
execute as @s store result entity @s Rotation[1] float 0.01 run data get entity @e[type=minecraft:player,sort=nearest,limit=1,distance=0..1] Rotation[1] 100
tp @s ~ ~1.7 ~