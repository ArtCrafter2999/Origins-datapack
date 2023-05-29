team leave @s
scoreboard players add @s illager-exile-timer 1
bossbar set illagers-exile visible true
execute store result bossbar illagers-exile value run scoreboard players get @s illager-exile-timer
execute if score @s illager-exile-timer >= #exile-time illager-exile-timer run tag @s remove illager-hit