scoreboard players set @s lich-zikurat-points 0

execute if block ~ ~ ~ minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~1 ~ ~ minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~1 ~ ~1 minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~ ~ ~1 minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~-1 ~ ~1 minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~-1 ~ ~ minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~-1 ~ ~-1 minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~ ~ ~-1 minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~1 ~ ~-1 minecraft:deepslate_bricks run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~ ~ minecraft:deepslate_brick_stairs[facing=east] run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~ ~ minecraft:deepslate_brick_stairs[facing=west] run scoreboard players add @s lich-zikurat-points 1
execute if block ~ ~ ~2 minecraft:deepslate_brick_stairs[facing=north] run scoreboard players add @s lich-zikurat-points 1
execute if block ~ ~ ~-2 minecraft:deepslate_brick_stairs[facing=south] run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~ ~1 minecraft:deepslate_brick_stairs[facing=west] run scoreboard players add @s lich-zikurat-points 1
execute if block ~1 ~ ~2 minecraft:deepslate_brick_stairs[facing=north] run scoreboard players add @s lich-zikurat-points 1
execute if block ~1 ~ ~-2 minecraft:deepslate_brick_stairs[facing=south] run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~ ~1 minecraft:deepslate_brick_stairs[facing=east] run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~ ~-1 minecraft:deepslate_brick_stairs[facing=west] run scoreboard players add @s lich-zikurat-points 1
execute if block ~-1 ~ ~2 minecraft:deepslate_brick_stairs[facing=north] run scoreboard players add @s lich-zikurat-points 1
execute if block ~-1 ~ ~-2 minecraft:deepslate_brick_stairs[facing=south] run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~ ~-1 minecraft:deepslate_brick_stairs[facing=east] run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~ ~2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~ ~-2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~ ~2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~ ~-2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~1 ~2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~1 ~-2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~1 ~2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~1 ~-2 minecraft:bone_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~ ~1 ~ minecraft:gold_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~2 ~2 minecraft:gold_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~2 ~2 ~-2 minecraft:gold_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~2 ~2 minecraft:gold_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~-2 ~2 ~-2 minecraft:gold_block run scoreboard players add @s lich-zikurat-points 1
execute if block ~-1 ~1 ~ minecraft:deepslate_brick_stairs[facing=east] run scoreboard players add @s lich-zikurat-points 1
execute if block ~1 ~1 ~ minecraft:deepslate_brick_stairs[facing=west] run scoreboard players add @s lich-zikurat-points 1
execute if block ~ ~1 ~1 minecraft:deepslate_brick_stairs[facing=north] run scoreboard players add @s lich-zikurat-points 1
execute if block ~ ~1 ~-1 minecraft:deepslate_brick_stairs[facing=south] run scoreboard players add @s lich-zikurat-points 1
execute positioned ~2 ~3 ~2 if entity @e[type=item, distance=..1, nbt={Item:{tag:{Tags:[blood]}}}] run scoreboard players add @s lich-zikurat-points 1
execute positioned ~2 ~3 ~-2 if entity @e[type=item, distance=..1, nbt={Item:{tag:{Tags:[blood]}}}] run scoreboard players add @s lich-zikurat-points 1
execute positioned ~-2 ~3 ~2 if entity @e[type=item, distance=..1, nbt={Item:{tag:{Tags:[blood]}}}] run scoreboard players add @s lich-zikurat-points 1
execute positioned ~-2 ~3 ~-2 if entity @e[type=item, distance=..1, nbt={Item:{tag:{Tags:[blood]}}}] run scoreboard players add @s lich-zikurat-points 1

execute if score @s lich-zikurat-points matches 42 run function origins:lich/explode-zikurat