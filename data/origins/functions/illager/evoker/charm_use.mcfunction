kill @e[type=item, nbt={Item:{id:"minecraft:totem_of_undying"}}, distance=..3]
give @s totem_of_undying

advancement grant @s only origins:general/illager/evoker-power

execute unless score @s illager-fangprocess matches 0.. run scoreboard players set @s illager-fangprocess 0
execute store result score @s illager-rotation run data get entity @s Rotation[1]

execute at @s if entity @e[type=sheep, nbt={Color:11b}, distance=..16, limit=1, sort=nearest] if score @s illager-fangprocess matches 0 run function origins:illager/evoker/sheep
execute at @s if score @s illager-rotation matches ..-89 if score @s illager-fangprocess matches 0 run function origins:illager/evoker/summonvexes
execute at @s if score @s crouch matches 1.. if score @s illager-fangprocess matches 0 run function origins:illager/evoker/summonarea
execute at @s if score @s crouch matches 0 if score @s illager-fangprocess matches 0 run function origins:illager/evoker/summonbeam

function origins:illager/evoker/recharge_0