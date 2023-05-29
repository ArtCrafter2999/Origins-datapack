tag @s remove redstone
tag @s remove glowstone

execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:redstone"}}] run tag @s add redstone
execute if entity @e[distance=..0.4, type=item, nbt={Item:{id:"minecraft:glowstone_dust"}}] run tag @s add glowstone