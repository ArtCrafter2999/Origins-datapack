data modify storage item Legs set from entity @s Inventory[{Slot:101b}]
summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:[dropped-item],PickupDelay:50}
execute as @e[tag=dropped-item] run data modify entity @s Item set from storage item OffhandItem
item replace entity @s armor.legs with air
execute as @e[tag=dropped-item] run tag @s remove dropped-item