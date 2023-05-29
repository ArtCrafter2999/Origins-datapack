execute as @e[type=marker,tag=evoker.beam] run function origins:illager/evoker/beam_process
execute as @e[type=armor_stand,tag=evoker.fang] at @s run function origins:illager/evoker/fang_process
execute as @e[type=marker,tag=evoker.area] at @s run function origins:illager/evoker/area_process
execute as @e[type=armor_stand,tag=evoker.area_fang] at @s run function origins:illager/evoker/area_fang_process
execute if entity @e[type=#evoker_charm_entities,tag=evoker.0] run schedule function origins:illager/evoker/loop 1t