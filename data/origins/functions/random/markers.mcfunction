execute if score #random random-value <= #random random-max run summon marker ~ ~ ~ {Tags:[random-marker, random-new-marker]}
execute as @e[tag=random-new-marker] run scoreboard players operation @s random-value = #random random-value
execute as @e[tag=random-new-marker] run tag @s remove random-new-marker
scoreboard players add #random random-value 1
execute if score #random random-value <= #random random-max run function origins:random/markers