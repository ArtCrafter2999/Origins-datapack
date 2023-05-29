tag @s remove sugar
tag @s remove rabbit
tag @s remove rabbit
tag @s remove blaze_powder
tag @s remove melon
tag @s remove eye
tag @s remove tear
tag @s remove cream
tag @s remove fish
tag @s remove carrot
tag @s remove scute
tag @s remove membrane
tag @s remove fermented_eye
tag @s remove redstone
tag @s remove glowstone
tag @s remove warped
tag @s remove crimson
tag @s remove gunpowder
tag @s remove breath

execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:sugar"}}] run tag @s add sugar
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:rabbit"}}] run tag @s add rabbit
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:rabbit_foot"}}] run tag @s add rabbit
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:blaze_powder"}}] run tag @s add blaze_powder
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:glistering_melon_slice"}}] run tag @s add melon
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:spider_eye"}}] run tag @s add eye
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:ghast_tear"}}] run tag @s add tear
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:magma_cream"}}] run tag @s add cream
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:pufferfish"}}] run tag @s add fish
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:golden_carrot"}}] run tag @s add carrot
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:scute"}}] run tag @s add scute
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:phantom_membrane"}}] run tag @s add membrane
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:fermented_spider_eye"}}] run tag @s add fermented_eye