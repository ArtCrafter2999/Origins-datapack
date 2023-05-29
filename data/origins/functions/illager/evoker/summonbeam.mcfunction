summon marker ~ ~ ~ {Tags:["evoker.0","evoker.beam","evoker.new"]}

execute as @e[type=marker,tag=evoker.new] at @s run function origins:illager/evoker/beam_set
function origins:illager/evoker/loop

playsound minecraft:entity.evoker.cast_spell player @a
scoreboard players set @s illager-fangprocess 60
