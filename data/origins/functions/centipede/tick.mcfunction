execute if entity @s[tag=!centipede-new] run scoreboard players set @s centipede-index -1
execute if entity @s[tag=!centipede-new] run tag @s add centipede-new

scoreboard players set #centipede centipede-index 0
execute as @e[tag=centipede] run scoreboard players add #centipede centipede-index 1

scoreboard players set #centipede centipede-next-index 0
function origins:centipede/check

execute as @e[tag=centipede, scores={centipede-index=-1}, sort=random] run scoreboard players operation @s centipede-index += #centipede centipede-index

scoreboard players operation @s centipede-next-index = @s centipede-index
scoreboard players operation @s centipede-prev-index = @s centipede-index
scoreboard players add @s centipede-next-index 1
scoreboard players remove @s centipede-prev-index 1

tag @s add centipede-cur
execute as @e[tag=centipede, distance=2..] if score @s centipede-index = @e[tag=centipede-cur, limit=1] centipede-prev-index run tag @s add centipede-far
execute at @e[tag=centipede-far, limit=1] facing entity @s feet positioned ^ ^-0.2 ^1.99 run function origins:centipede/tp-on-block
tag @e[tag=centipede-far] remove centipede-far
tag @e[tag=centipede-cur] remove centipede-cur

execute if score #centipede centipede-command-timer matches ..0 run scoreboard players enable @s head
execute if score @s head matches 1.. run function origins:centipede/head-command
scoreboard players remove #centipede centipede-command-timer 1