execute if score @s ghost-fire-items matches 1.. run give @s soul_torch 1
execute if score @s ghost-fire-items matches 1.. run scoreboard players remove @s ghost-fire-items 1
execute if score @s ghost-fire-items matches 1.. run function origins:ghost/soul-items/give-soul-torch