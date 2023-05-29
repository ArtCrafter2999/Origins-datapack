execute at @s align xzy positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:[truffle-cauldron]}
playsound block.bubble_column.whirlpool_inside master @a ~ ~ ~ 0.8
kill @e[distance=..0.5, type=item, nbt={Item:{id:"minecraft:brown_mushroom"}}]
kill @s