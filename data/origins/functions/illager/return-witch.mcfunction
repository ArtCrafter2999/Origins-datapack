effect give @s invisibility 4 0 true
summon witch ~ ~ ~ {Tags:[illager-new-witch, illager-was-villager]}
scoreboard players operation @e[tag=illager-new-witch] illager-save-index = @s illager-save-index
tag @e[tag=illager-new-witch] remove illager-new-witch
kill @s