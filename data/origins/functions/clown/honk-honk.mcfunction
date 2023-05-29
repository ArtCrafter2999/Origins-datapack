#Ponder (номер 0) - Спешка 1
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:ponder_goat_horn"}}} run effect give @e[distance=..15, type=#pets] haste 30 0 false 
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:ponder_goat_horn"}}} run effect give @e[distance=..15, type=player] haste 30 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:ponder_goat_horn"}}} run effect give @e[distance=..15, type=#pets] haste 30 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:ponder_goat_horn"}}} run effect give @e[distance=..15, tag=clown] haste 30 0 false 
#Sing (номер 1) - Скорость 2
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:sing_goat_horn"}}} run effect give @e[distance=..15, type=#pets] speed 30 1 false 
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:sing_goat_horn"}}} run effect give @e[distance=..15, type=player] speed 30 1 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:sing_goat_horn"}}} run effect give @e[distance=..15, type=#pets] speed 30 1 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:sing_goat_horn"}}} run effect give @e[distance=..15, tag=clown] speed 30 1 false 
#Seek (номер 2) - Сила 1
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:seek_goat_horn"}}} run effect give @e[distance=..15, type=#pets] strength 30 0 false 
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:seek_goat_horn"}}} run effect give @e[distance=..15, type=player] strength 30 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:seek_goat_horn"}}} run effect give @e[distance=..15, type=#pets] strength 30 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:seek_goat_horn"}}} run effect give @e[distance=..15, tag=clown] strength 30 0 false 
#Feel (номер 3) - Тошнота 1
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:feel_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, type=!player, tag=!clown] nausea 10 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:feel_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, tag=!clown] nausea 10 0 false 
#Admire (номер 4) - Слепота
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:admire_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, type=!player, tag=!clown] blindness 10 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:admire_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, tag=!clown] blindness 10 0 false 
#Call (номер 5) - Сопротивление 1
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:call_goat_horn"}}} run effect give @e[distance=..15, type=#pets] resistance 30 0 false 
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:call_goat_horn"}}} run effect give @e[distance=..15, type=player] resistance 30 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:call_goat_horn"}}} run effect give @e[distance=..15, type=#pets] resistance 30 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:call_goat_horn"}}} run effect give @e[distance=..15, tag=clown] resistance 30 0 false 
#Yearn (номер 6) - Замедление 1
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:yearn_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, type=!player, tag=!clown] slowness 10 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:yearn_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, tag=!clown] slowness 10 0 false 
#Dream (номер 7) - Слабость 1
execute if score @s crouch matches ..0 if data entity @s {SelectedItem:{tag:{instrument:"minecraft:dream_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, type=!player, tag=!clown] weakness 10 0 false 
execute if score @s crouch matches 1.. if data entity @s {SelectedItem:{tag:{instrument:"minecraft:dream_goat_horn"}}} run effect give @e[distance=..15, type=!#pets, tag=!clown] weakness 10 0 false 