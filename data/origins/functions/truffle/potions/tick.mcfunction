execute unless block ~ ~ ~ water_cauldron run kill @s
execute unless block ~ ~-1 ~ #campfires run kill @s

execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:sugar"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:rabbit"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:rabbit_foot"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:blaze_powder"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:glistering_melon_slice"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:spider_eye"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:ghast_tear"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:magma_cream"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:pufferfish"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:golden_carrot"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:scute"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:phantom_membrane"}}] run function origins:truffle/potions/change-effect
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:fermented_spider_eye"}}] run function origins:truffle/potions/change-effect

execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:redstone"}}] run function origins:truffle/potions/change-addition
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:glowstone_dust"}}] run function origins:truffle/potions/change-addition

execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:warped_fungus"}}] run tag @s add warped
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:crimson_fungus"}}] run tag @s add crimson

execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:gunpowder"}}] run tag @s add gunpowder
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:dragon_breath"}}] run tag @s add breath

execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:red_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:orange_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:yellow_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:lime_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:green_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:cyan_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:blue_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:purple_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:magenta_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:pink_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:gray_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:black_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:light_blue_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:light_gray_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:white_dye"}}] run function origins:truffle/potions/change-color
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:brown_dye"}}] run function origins:truffle/potions/change-color
execute if entity @s[tag=warped, tag=crimson] run tag @s add truffle-potion-upgraded

execute if entity @e[distance=..0.4, type=item] run playsound minecraft:block.bubble_column.upwards_ambient master @a ~ ~ ~ 1
kill @e[distance=..0.4, type=item]


function origins:truffle/potions/particles