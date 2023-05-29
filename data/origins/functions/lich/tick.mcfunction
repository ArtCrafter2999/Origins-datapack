execute if entity @s[tag=!lich-new] run give @p clock{display: {Name: '[{"text":"Burden of Alucard","italic":false,"color":"gold"}]'}} 1
execute if entity @s[tag=!lich-new] run scoreboard players set @s lich-zikurat-timer 0
execute if entity @s[tag=!lich-new] run effect give @s fire_resistance 600 0 true
execute if entity @s[tag=!lich-new] run tag @s add lich-new

team join lich @s

#burn on sun mechanic
execute as @s at @s run function origins:lich/get-light
execute as @s[scores={lich-light-level=15}] unless data entity @s Inventory[{Slot: 103b, id: ""}] run function origins:lich/burn
scoreboard players set @s[scores={lich-light-level=1..14}] lich-burn-cooldown 0

#disable to eat food
execute as @s at @s run function origins:lich/check-drop-food

#revoke all eat mobs adwancements
function origins:lich/revoke-advancements
execute as @e[tag=lich-has-bottle] run item replace entity @s weapon with air
execute as @e[tag=lich-has-bottle] run tag @s remove lich-has-bottle

#attrebutes
attribute @s minecraft:generic.max_health base set 30
attribute @s generic.attack_damage base set 2

#ghost zikurat
execute if score @s lich-zikurat matches 1.. positioned ^ ^1 ^5 run function origins:lich/show-zikurat
execute if score @s lich-zikurat-timer matches ..0 run function origins:lich/hide-zikurat
execute as @e[scores={lich-zikurat-timer=1..}] run scoreboard players remove @s lich-zikurat-timer 1

#golem angry
execute as @e[type=iron_golem, distance=..12] run data modify entity @s AngerTime set value 1000
execute as @e[type=iron_golem, distance=..12] run data modify entity @s AngryAt set from entity @a[tag=lich, limit=1, sort=nearest] UUID
execute as @e[type=snow_golem, distance=..12] run data modify entity @s AngerTime set value 1000
execute as @e[type=snow_golem, distance=..12] run data modify entity @s AngryAt set from entity @a[tag=lich, limit=1, sort=nearest] UUID

#zikurat
execute as @e[tag=lich-book-spawn,scores={lich-zikurat-timer=..0}] at @s run function origins:lich/summon-book
execute store result score @s lich-xp-levels run xp query @s levels
execute if score @s lich-xp-levels matches 20.. as @e[type=item,nbt={Item: {id: "minecraft:writable_book"}},distance=..10,sort=nearest,limit=1] at @s positioned ~ ~-2 ~ run function origins:lich/check-zikurat
