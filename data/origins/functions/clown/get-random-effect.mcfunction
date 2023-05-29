scoreboard players set @s random-min 0
scoreboard players set @s random-max 29
function origins:random/run
execute if score @s random-value matches 0 run effect give @s absorption 25 0 true
execute if score @s random-value matches 1 run effect give @s blindness 30 0 true
execute if score @s random-value matches 2 run effect give @s conduit_power 25 0 true
execute if score @s random-value matches 3 run effect give @s darkness 30 0 true
execute if score @s random-value matches 4 run effect give @s dolphins_grace 25 0 true
execute if score @s random-value matches 5 run effect give @s fire_resistance 25 0 true
execute if score @s random-value matches 6 run effect give @s glowing 30 0 true
execute if score @s random-value matches 7 run effect give @s haste 25 0 true
execute if score @s random-value matches 8 run effect give @s health_boost 25 0 true
execute if score @s random-value matches 9 run effect give @s hunger 30 0 true
execute if score @s random-value matches 10 run effect give @s instant_damage 1 0 true
execute if score @s random-value matches 11 run effect give @s instant_health 1 0 true
execute if score @s random-value matches 12 run effect give @s invisibility 25 0 true
execute if score @s random-value matches 13 run effect give @s jump_boost 25 0 true
execute if score @s random-value matches 14 run effect give @s levitation 30 0 true
execute if score @s random-value matches 15 run effect give @s luck 25 0 true
execute if score @s random-value matches 16 run effect give @s mining_fatigue 30 0 true
execute if score @s random-value matches 17 run effect give @s nausea 30 0 true
execute if score @s random-value matches 18 run effect give @s night_vision 25 0 true
execute if score @s random-value matches 19 run effect give @s poison 30 0 true
execute if score @s random-value matches 20 run effect give @s wither 30 0 true
execute if score @s random-value matches 21 run effect give @s regeneration 25 0 true
execute if score @s random-value matches 22 run effect give @s resistance 25 0 true
execute if score @s random-value matches 23 run effect give @s slow_falling 25 0 true
execute if score @s random-value matches 24 run effect give @s slowness 30 0 true
execute if score @s random-value matches 25 run effect give @s speed 25 0 true
execute if score @s random-value matches 26 run effect give @s strength 25 0 true
execute if score @s random-value matches 27 run effect give @s unluck 30 0 true
execute if score @s random-value matches 28 run effect give @s water_breathing 25 0 true
execute if score @s random-value matches 29 run effect give @s weakness 30 0 true