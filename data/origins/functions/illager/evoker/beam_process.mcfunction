scoreboard players add @s illager-beam 1
execute if score @s illager-beam matches 100.. run kill @s
execute at @s if score @s illager-beam matches 1.. run tp @s ^ ^ ^1
execute at @s if score @s illager-beam matches 2.. run summon armor_stand ~ ~ ~ {Tags:["evoker.0","evoker.fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}