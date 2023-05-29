execute if score @s dwarf-full-set-damage-timer matches ..0 run damage @s 4 
execute if score @s dwarf-full-set-damage-timer matches ..0 run scoreboard players set @s dwarf-full-set-damage-timer 6000
execute if score @s dwarf-full-set-damage-timer matches 0.. run scoreboard players remove @s dwarf-full-set-damage-timer 1