#inside block
execute unless block ~ ~ ~ #passable unless block ~ ~1 ~ #passable run scoreboard players add @s elytrian-claustrophobia-points 20

#under-block
execute unless block ~ ~1 ~ #passable run scoreboard players add @s elytrian-claustrophobia-points 10

#walls
execute unless block ~1 ~ ~ #passable run scoreboard players add @s elytrian-claustrophobia-points 6
execute unless block ~-1 ~ ~ #passable run scoreboard players add @s elytrian-claustrophobia-points 6
execute unless block ~ ~ ~1 #passable run scoreboard players add @s elytrian-claustrophobia-points 6
execute unless block ~ ~ ~-1 #passable run scoreboard players add @s elytrian-claustrophobia-points 6

#corners
execute unless block ~1 ~ ~1 #passable run scoreboard players add @s elytrian-claustrophobia-points 3
execute unless block ~-1 ~ ~1 #passable run scoreboard players add @s elytrian-claustrophobia-points 3
execute unless block ~1 ~ ~-1 #passable run scoreboard players add @s elytrian-claustrophobia-points 3
execute unless block ~-1 ~ ~-1 #passable run scoreboard players add @s elytrian-claustrophobia-points 3

#walls after one block
execute if block ~1 ~ ~ #passable unless block ~2 ~ ~ #passable run scoreboard players add @s elytrian-claustrophobia-points 2
execute if block ~-1 ~ ~ #passable unless block ~-2 ~ ~ #passable run scoreboard players add @s elytrian-claustrophobia-points 2
execute if block ~ ~ ~1 #passable unless block ~ ~ ~2 #passable run scoreboard players add @s elytrian-claustrophobia-points 2
execute if block ~ ~ ~-1 #passable unless block ~ ~ ~-2 #passable run scoreboard players add @s elytrian-claustrophobia-points 2

execute if block ~1 ~ ~1 #passable unless block ~2 ~ ~1 #passable run scoreboard players add @s elytrian-claustrophobia-points 1
execute if block ~1 ~ ~-1 #passable unless block ~2 ~ ~-1 #passable run scoreboard players add @s elytrian-claustrophobia-points 1

execute if block ~-1 ~ ~1 #passable unless block ~-2 ~ ~1 #passable run scoreboard players add @s elytrian-claustrophobia-points 1
execute if block ~-1 ~ ~-1 #passable unless block ~-2 ~ ~-1 #passable run scoreboard players add @s elytrian-claustrophobia-points 1

execute if block ~1 ~ ~1 #passable unless block ~1 ~ ~2 #passable run scoreboard players add @s elytrian-claustrophobia-points 1
execute if block ~-1 ~ ~1 #passable unless block ~-1 ~ ~2 #passable run scoreboard players add @s elytrian-claustrophobia-points 1

execute if block ~1 ~ ~-1 #passable unless block ~1 ~ ~-2 #passable run scoreboard players add @s elytrian-claustrophobia-points 1
execute if block ~-1 ~ ~-1 #passable unless block ~-1 ~ ~-2 #passable run scoreboard players add @s elytrian-claustrophobia-points 1
execute if block ~ ~ ~-1 #passable unless block ~-1 ~ ~-2 #passable run scoreboard players add @s elytrian-claustrophobia-points 1
