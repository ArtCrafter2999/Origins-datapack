#Последствія
advancement revoke @a only origins:dwarf/astral-beer
advancement revoke @a only origins:dwarf/vivacity-beer
execute as @a if score @s dwarf-consequences-timer matches 0 run function origins:dwarf/consequences
execute as @a if score @s dwarf-consequences-timer matches -1.. run scoreboard players remove @s dwarf-consequences-timer 1