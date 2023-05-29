data modify storage item SelectedItem set from entity @s SelectedItem
summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:[dropped-item],PickupDelay:50}
execute as @e[tag=dropped-item] run data modify entity @s Item set from storage item SelectedItem
item replace entity @s weapon.mainhand with air
execute as @e[tag=dropped-item] run tag @s remove dropped-item