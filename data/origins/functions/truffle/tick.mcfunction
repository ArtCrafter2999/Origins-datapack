#Трюфель :
execute if entity @s[tag=!truffle-new] run scoreboard players set @s truffle-dehydration-timer 24000
tag @s add truffle-new

#Вегетарианец; :/
function origins:truffle/check-drop-meat
#Имеет перманентные 4-единцы брони;
attribute @s generic.armor base set 4
#Если он находится не на блоке мицелия,то он получает голод до тех пор,пока не окажется на мицелии;
execute unless block ~ ~-1 ~ mycelium run effect give @s hunger 1 0 true
#Если он стоит не на блоке, связанным с землёй (трава, мицелий, земля, песок, подзол, мох), то он получает эфект слабости.
execute unless block ~ ~-1 ~ mycelium unless block ~ ~-1 ~ #earth_blocks run effect give @s slowness 1 0 true
#Рандомайзер часу до наступної "грибіфікації"
#рандомний поміжок 15 секунд (300 тіків) в межах від 2 до 4 хв
scoreboard players set @s random-min 8 
scoreboard players set @s random-max 16
execute if score @s truffle-timer matches ..0 run function origins:truffle/mycelization

#При нажатом шифте на площі 7x7 мицелия получает эффект насыщения;
scoreboard players set @s truffle-zone 0
function origins:truffle/check-mycelium/run
execute if score @s crouch matches 1.. if score @s truffle-zone matches 22.. run effect give @s saturation 1 0 true

execute if entity @e[type=pig, distance=..4] run effect give @s nausea 4 0 true

#кастомні зілля
function origins:truffle/potions/check-cauldron
execute as @e[tag=truffle-cauldron] at @s run function origins:truffle/potions/tick
advancement revoke @s only origins:truffle/use-glass-bottle
advancement revoke @s only origins:truffle/dilute
advancement revoke @s only origins:truffle/consume-water

#дегідрація
execute if score @s truffle-dehydration-timer matches ..0 run function origins:truffle/dehydration

#water check
execute as @s at @s unless predicate origins:truffle/biome-check if predicate origins:truffle/rain run function origins:truffle/rain
execute as @s at @s unless predicate origins:truffle/biome-check if predicate origins:truffle/thunder run function origins:truffle/rain

execute if block ~ ~ ~ water_cauldron run function origins:truffle/consumed-water
execute if block ~ ~ ~ water run function origins:truffle/consumed-water
execute if block ~ ~1 ~ water run function origins:truffle/consumed-water

scoreboard players remove @s truffle-timer 1
scoreboard players remove @s truffle-dehydration-timer 1