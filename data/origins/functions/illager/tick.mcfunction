execute as @e[type=#raiders] at @s run function origins:illager/illagers-tick
execute as @e[type=vex] run team join illagers @s
execute as @e[type=evoker_fangs] run team join illagers @s
execute as @e[tag=illager-villager] at @s run function origins:illager/illagers-tick

#permanent
bossbar set illagers-exile players @s
effect clear @s hero_of_the_village


#bad_omen
execute if score @s illager-raid-cooldown >= #raid-cooldown illager-raid-cooldown run effect give @s bad_omen 1000000 0 true
execute if score @s illager-raid-cooldown >= #raid-cooldown illager-raid-cooldown run scoreboard players set @s illager-raid-cooldown 0
execute if score @s illager-raid-cooldown < #raid-cooldown illager-raid-cooldown run scoreboard players add @s illager-raid-cooldown 1

#is exile
execute unless entity @s[tag=illager-hit] run function origins:illager/not-exile
execute if entity @s[tag=illager-hit] run function origins:illager/exile

#check can't use swords bow or trident
execute at @s run function origins:illager/check-drop-weapon

#evoker power 
execute if score @s illager-usetotem matches 1.. run function origins:illager/evoker/charm_use
scoreboard players set @s illager-usetotem 0

#Angry at illager
execute as @e[type=iron_golem, distance=..12] run data modify entity @s AngerTime set value 1000
execute as @e[type=iron_golem, distance=..12] run data modify entity @s AngryAt set from entity @a[tag=illager, limit=1, sort=nearest] UUID
execute as @e[type=snow_golem, distance=..12] run data modify entity @s AngerTime set value 1000
execute as @e[type=snow_golem, distance=..12] run data modify entity @s AngryAt set from entity @a[tag=illager, limit=1, sort=nearest] UUID