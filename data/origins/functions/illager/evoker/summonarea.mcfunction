
summon marker ~ ~ ~ {Tags:["evoker.0","evoker.area","evoker.area_center","evoker.new_area"]}

execute as @e[type=marker,tag=evoker.new_area] at @s run function origins:illager/evoker/area_set
function origins:illager/evoker/loop

playsound minecraft:entity.evoker.cast_spell player @a
scoreboard players set @s illager-fangprocess 100