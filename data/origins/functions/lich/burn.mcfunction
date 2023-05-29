scoreboard players add @s lich-burn-cooldown 1
effect give @s blindness 3 0 true
execute if entity @s[scores={lich-burn-cooldown=20..}] run execute at @s run summon small_fireball ~ ~2.1 ~ {Fire:1,direction:[0.0,-1.0,0.0],power:[0.0,-1.0,0.0]}
execute if entity @s[scores={lich-burn-cooldown=20..}] run scoreboard players set @s lich-burn-cooldown 0 