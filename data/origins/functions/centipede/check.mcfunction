scoreboard players set #centipede centipede-continuity 0
execute as @e[tag=centipede] if score @s centipede-index = #centipede centipede-next-index run scoreboard players add #centipede centipede-continuity 1
execute if score #centipede centipede-continuity matches 0 as @e[tag=centipede] if score @s centipede-index > #centipede centipede-next-index run scoreboard players remove @s centipede-index 1
execute if score #centipede centipede-continuity matches 2.. as @e[tag=centipede] if score @s centipede-index = #centipede centipede-next-index run scoreboard players set @s centipede-index -1

scoreboard players add #centipede centipede-next-index 1
execute if score #centipede centipede-continuity matches 2.. run scoreboard players set #centipede centipede-next-index 0
execute if score #centipede centipede-next-index < #centipede centipede-index run function origins:centipede/check