scoreboard players set @s random-min 0
scoreboard players set @s random-max 77
function origins:random/run
scoreboard players operation @s clown-effect-charged = @s random-value
scoreboard players set @s clown-effect-charge-timer 24000