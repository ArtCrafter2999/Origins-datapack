scoreboard players add @s illager-area 1
execute if score @s illager-area matches 45.. run kill @s

execute at @s[tag=evoker.area_center] run tp @e[tag=evoker.area_tracker] ^0.21 ^ ^1.5
execute if score @s[tag=evoker.area_center] illager-area matches 1.. positioned as @p positioned ~ ~1.7 ~ run tp @s ~ ~ ~ facing entity @e[tag=evoker.area_tracker,limit=1,sort=nearest] feet

execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^2 ^ ^0 {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}
execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^-2 ^ ^0 {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}

execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^3 ^ ^0 {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}
execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^-3 ^ ^0 {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}

execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^4 ^ ^ {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}
execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^-4 ^ ^ {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}

execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^5 ^ ^ {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}
execute at @s if score @s[tag=evoker.area_center] illager-area matches 1.. run summon armor_stand ^-5 ^ ^ {Tags:["evoker.0","evoker.area_fang"],Silent:1,Invisible:1,Small:1,DisabledSlots:63,Motion:[0.0d,-10.0d,0.0d]}