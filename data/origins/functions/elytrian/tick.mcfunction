execute if entity @s[tag=!elytrian-new] run scoreboard players set @s elytrian-elytra-level 0
execute if entity @s[tag=!elytrian-new] run tag @s add elytrian-new

scoreboard players set @s elytrian-claustrophobia-points 0
execute at @s if block ~ ~1 ~ #passable run function origins:elytrian/block-up
execute at @s unless block ~ ~1 ~ #passable run function origins:elytrian/block-down
execute run function origins:elytrian/effect

execute if score @s elytrian-elytra-level matches ..0 run item replace entity @s armor.chest with elytra{Unbreakable: 1b, Enchantments: [{id: "binding_curse", lvl: 1}, {id: "vanishing_curse", lvl: 1}]}
execute if score @s elytrian-elytra-level matches 1 run item replace entity @s armor.chest with elytra{Unbreakable: 1b, Enchantments: [{id: "binding_curse", lvl: 1}, {id: "vanishing_curse", lvl: 1}, {id: "protection", lvl: 1}]}
execute if score @s elytrian-elytra-level matches 2 run item replace entity @s armor.chest with elytra{Unbreakable: 1b, Enchantments: [{id: "binding_curse", lvl: 1}, {id: "vanishing_curse", lvl: 1}, {id: "protection", lvl: 2}]}
execute if score @s elytrian-elytra-level matches 3 run item replace entity @s armor.chest with elytra{Unbreakable: 1b, Enchantments: [{id: "binding_curse", lvl: 1}, {id: "vanishing_curse", lvl: 1}, {id: "protection", lvl: 3}]}
execute if score @s elytrian-elytra-level matches 4.. run item replace entity @s armor.chest with elytra{Unbreakable: 1b, Enchantments: [{id: "binding_curse", lvl: 1}, {id: "vanishing_curse", lvl: 1}, {id: "protection", lvl: 4}]}

attribute @s generic.movement_speed base set 0.12
effect give @s jump_boost 999999 1 true

execute if score @s crouch matches 1.. if score @s elytrian-jump-cooldown matches ..0 run effect give @s jump_boost 5 20 true
execute if score @s crouch matches 0 run effect clear @s jump_boost
execute if score @s elytrian-jump-cooldown matches 1.. run effect clear @s jump_boost
execute if score @s crouch matches 1.. if score @s elytrian-jump-cooldown matches ..0 if score @s jump matches 1.. run scoreboard players set @s elytrian-jump-cooldown 400
scoreboard players remove @s elytrian-jump-cooldown 1

bossbar set elytrian-jump-cooldown players @s
scoreboard players set #cooldown elytrian-jump-cooldown 400
scoreboard players operation #cooldown elytrian-jump-cooldown -= @s elytrian-jump-cooldown
execute store result bossbar elytrian-jump-cooldown value run scoreboard players get #cooldown elytrian-jump-cooldown
execute if score @s elytrian-jump-cooldown matches 1.. run bossbar set elytrian-jump-cooldown visible true
execute unless score @s elytrian-jump-cooldown matches 1.. run bossbar set elytrian-jump-cooldown visible false

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:arrow"}}, sort=nearest, limit=1, distance=..5] at @s if block ~ ~-1 ~ #anvil if entity @e[type=item, nbt={Item:{id:"minecraft:feather"}}, distance=..1] if entity @e[type=item, nbt={Item:{id:"minecraft:string"}}, distance=..1] if entity @e[type=item, nbt={Item:{id:"minecraft:phantom_membrane"}}, distance=..1] run function origins:elytrian/craft-arrow