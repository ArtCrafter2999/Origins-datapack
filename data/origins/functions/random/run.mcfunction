function origins:random/get-bounds
function origins:random/markers
scoreboard players operation @s random-value = @e[tag=random-marker, limit=1, sort=random] random-value
function origins:random/kill-markers