execute if score @s illager-fangprocess matches 1 at @s run execute positioned ^ ^ ^0.3 run particle witch ~ ~1.7 ~ 0.1 0.1 0.1 0 5
execute if score @s illager-fangprocess matches 1 at @s run playsound minecraft:entity.evoker.prepare_attack player @a

execute if score @s illager-fangprocess matches 1.. run scoreboard players remove @s illager-fangprocess 1
execute if score @s illager-fangprocess matches 1.. run schedule function origins:illager/evoker/recharge_0 1t