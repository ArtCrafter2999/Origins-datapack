playsound minecraft:entity.evoker.prepare_wololo player @a
data modify entity @e[type=sheep, nbt={Color:11b}, distance=..16, limit=1, sort=nearest] Color set value 14b
advancement grant @s only origins:general/illager/evoker-sheep
scoreboard players set @s illager-fangprocess 50