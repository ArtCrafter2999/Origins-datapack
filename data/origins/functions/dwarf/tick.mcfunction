#Отримує позитивні ефекти від висоти (чим менше тим краще)
execute store result score @s dwarf-height run data get entity @s Pos[1]
function origins:dwarf/give-height-effect

#Пиво
execute as @e[distance=..4, type=item, nbt={Item:{id:"minecraft:wheat"}}] at @s if block ~ ~ ~ water_cauldron if block ~ ~-1 ~ #campfires run function origins:dwarf/check-beer

#Базова швидкість 0.12 (в той час як звичайна 0.1)
attribute @s generic.movement_speed base set 0.12

#При отсутствии штанов получает бафф - Дельфинья Грация
execute if entity @s[nbt=!{Inventory:[{Slot:101b}]}] run effect give @s dolphins_grace 3 0 true

#Плотояден
function origins:dwarf/drop-not-meat

#Если на нём одеты штаны(исключение золотые штаны),то получает дизмораль в виде свечения и голода
execute if entity @s[nbt={Inventory:[{Slot:101b}]}, nbt=!{Inventory:[{Slot:101b, id:"minecraft:golden_leggings"}]}] run effect give @s glowing 3 0 true
execute if entity @s[nbt={Inventory:[{Slot:101b}]}, nbt=!{Inventory:[{Slot:101b, id:"minecraft:golden_leggings"}]}] run effect give @s hunger 3 0 true

#Если на нём одет фулл сет любой брони(исключение золотая),то получает 4 единицы урона каждые 5 минут
execute if entity @s[nbt={Inventory:[{Slot:100b}]}, nbt=!{Inventory:[{Slot:100b, id:"minecraft:golden_boots"}]}, nbt={Inventory:[{Slot:101b}]}, nbt=!{Inventory:[{Slot:101b, id:"minecraft:golden_leggings"}]}, nbt={Inventory:[{Slot:102b}]}, nbt=!{Inventory:[{Slot:102b, id:"minecraft:golden_chestplate"}]}, nbt={Inventory:[{Slot:103b}]}, nbt=!{Inventory:[{Slot:103b, id:"minecraft:golden_helmet"}]}] run function origins:dwarf/full-set-damage

#Если на дварфе одет фулл сет золотой брони,он получает эффект везения и огнестойкость
execute if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:golden_boots"}]}, nbt={Inventory:[{Slot:101b, id:"minecraft:golden_leggings"}]}, nbt={Inventory:[{Slot:102b, id:"minecraft:golden_chestplate"}]}, nbt={Inventory:[{Slot:103b, id:"minecraft:golden_helmet"}]}] run effect give @s luck 3 0 true
execute if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:golden_boots"}]}, nbt={Inventory:[{Slot:101b, id:"minecraft:golden_leggings"}]}, nbt={Inventory:[{Slot:102b, id:"minecraft:golden_chestplate"}]}, nbt=!{Inventory:[{Slot:103b, id:"minecraft:golden_helmet"}]}] run effect give @s fire_resistance 3 0 true

#При использовании топора в основной руке повышает скорость атаки(не обязательно)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run attribute @s generic.attack_speed base set 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run attribute @s generic.attack_speed base set 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run attribute @s generic.attack_speed base set 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run attribute @s generic.attack_speed base set 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run attribute @s generic.attack_speed base set 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run attribute @s generic.attack_speed base set 5
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:diamond_axe"}}, nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:wooden_axe"}}, nbt=!{SelectedItem:{id:"minecraft:stone_axe"}}, nbt=!{SelectedItem:{id:"minecraft:iron_axe"}}, nbt=!{SelectedItem:{id:"minecraft:netherite_axe"}}] run attribute @s generic.attack_speed base set 4

#Если дварф пьет склянку с водой или молоко,он получает 1 ед урона 
advancement revoke @s only origins:dwarf/drink

execute store result score @s dwarf-negative-motion run data get entity @s Motion[1] 100
scoreboard players set @s dwarf-height-above-ground 0
function origins:dwarf/calculate-height
execute if score @s dwarf-height-above-ground matches 2..6 if score @s dwarf-negative-motion matches ..-70 run effect give @s slow_falling 1 0 false

#Макс. хп дварфа - 18 ед.
attribute @s generic.max_health base set 18


