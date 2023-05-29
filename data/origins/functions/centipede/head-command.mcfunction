scoreboard players set #centipede centipede-command-timer 12000
execute as @e[tag=centipede] run scoreboard players reset @s
execute as @e[tag=centipede, scores={centipede-index=0}] run scoreboard players set @s centipede-index -1
scoreboard players set @s centipede-index 0