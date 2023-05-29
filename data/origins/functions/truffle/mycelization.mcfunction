function origins:truffle/summon-markers

execute as @e[tag=truffle-marker, sort=random, limit=1] at @s run function origins:truffle/mycelization-one

kill @e[tag=truffle-marker]
function origins:random/run
scoreboard players set @s truffle-timer 300
scoreboard players operation @s truffle-timer *= @s random-value
