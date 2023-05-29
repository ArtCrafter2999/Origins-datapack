attribute @s generic.attack_damage base set 1
attribute @s generic.max_health base set 28

#team
team join enderians @e[type=enderman]
team join enderians @e[type=endermite]
team join enderians @s

#water check
execute as @s at @s unless predicate origins:enderian/biome-check if predicate origins:enderian/rain run function origins:enderian/rain
execute as @s at @s unless predicate origins:enderian/biome-check if predicate origins:enderian/thunder run function origins:enderian/rain

execute if block ~ ~ ~ water_cauldron run effect give @s minecraft:wither 1 1 true
execute if block ~ ~ ~ water run effect give @s minecraft:wither 1 1 true
execute if block ~ ~1 ~ water run effect give @s minecraft:wither 1 1 true

#pumpkin check
function origins:enderian/look-at-pumkin

#straight teleportation
kill @e[tag=enderian-end-point]
execute if score @s crouch matches 1.. anchored eyes run function origins:enderian/ray-cast/look
execute if score @s jump matches 1.. as @e[tag=enderian-end-point] at @s run function origins:enderian/teleportation

advancement revoke @s only origins:enderian/kill-enderman

#golem angry
execute as @e[type=iron_golem, distance=..12] run data modify entity @s AngerTime set value 1000
execute as @e[type=iron_golem, distance=..12] run data modify entity @s AngryAt set from entity @a[tag=enderian, limit=1, sort=nearest] UUID
execute as @e[type=snow_golem, distance=..12] run data modify entity @s AngerTime set value 1000
execute as @e[type=snow_golem, distance=..12] run data modify entity @s AngryAt set from entity @a[tag=enderian, limit=1, sort=nearest] UUID