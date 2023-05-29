scoreboard players set @s random-min 0
scoreboard players set @s random-max 30
function origins:random/get-bounds
function origins:random/markers
function origins:illager/trades/kill-markers

execute as @e[tag=random-armor-stand] run function origins:illager/trades/append-from-random

function origins:random/kill-markers

scoreboard players set @e[tag=illager-villager-new, limit=1] illager-villager-timer 0