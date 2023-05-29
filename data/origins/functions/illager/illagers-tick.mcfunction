team join illagers @s
execute as @s[type=witch,tag=!illager-was-villager] at @s if entity @p[tag=!illager-hit] if entity @p[tag=illager, distance=..10, nbt={SelectedItem:{id:"minecraft:emerald"}}] run function origins:illager/trades/witch
execute as @s[tag=illager-villager] at @s if entity @p[tag=!illager, distance=..12] run function origins:illager/return-witch
execute as @s[tag=illager-villager, scores={illager-villager-timer=24000..}] run function origins:illager/return-witch
execute as @e[tag=illager-villager] run scoreboard players add @s illager-villager-timer 1
