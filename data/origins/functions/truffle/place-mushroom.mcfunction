scoreboard players set @s random-min 0
scoreboard players set @s random-max 1
function origins:random/run
execute if score @s random-value matches 0 run setblock ~ ~ ~ brown_mushroom
execute if score @s random-value matches 1 run setblock ~ ~ ~ red_mushroom