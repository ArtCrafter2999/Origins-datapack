execute if entity @s[tag=!ghost-new] run scoreboard players set @s ghost-astral-time 0
execute if entity @s[tag=!ghost-new] run scoreboard players set @s ghost-astral-cooldown 0
execute if entity @s[tag=!ghost-new] run scoreboard players set @s ghost-shift-shift 0
execute if entity @s[tag=!ghost-new] run scoreboard players set @s ghost-shift-shift-cooldown 0
execute if entity @s[tag=!ghost-new] run scoreboard players set @s ghost-form-timer 720000
execute as @s[tag=!ghost-new] run tag @s add ghost-new 

#Базовое хп 30
attribute @s generic.max_health base set 30

#Не имеет возможности носить доспехи
function origins:ghost/drop-armor/check-armor

#Имеет постоянный эффект Ночное Зрение
effect give @s night_vision 1000000 0 true

#Не имеет нужды в пище

#Не подчиняется эффектам Отравление, Иссушение, Голод Регенерация, Насыщенность
effect clear @s poison 
effect clear @s wither 
effect clear @s hunger 
effect clear @s regeneration 
effect clear @s saturation

#Переход в Астрал
bossbar set ghost-astral-cooldown players @s
execute if score @s ghost-astral-cooldown matches 1.. run bossbar set ghost-astral-cooldown visible true
execute if score @s ghost-astral-cooldown matches ..1 run bossbar set ghost-astral-cooldown visible false
execute if score @s ghost-astral-time matches ..0 run gamemode survival @s
execute if score @s crouch matches 1.. if score @s jump matches 1.. if score @s ghost-astral-time matches ..0 if score @s ghost-astral-cooldown matches ..0 run function origins:ghost/astral
execute if score @s ghost-astral-time matches 1.. run scoreboard players remove @s ghost-astral-time 1
execute if score @s ghost-astral-cooldown matches 1.. if score @s ghost-astral-time matches ..0 run scoreboard players remove @s ghost-astral-cooldown 1
execute store result bossbar ghost-astral-cooldown value run scoreboard players get @s ghost-astral-cooldown

#Его ник невидим для других игроков
team join ghosts @s

#Если призрак теряет одну единицу голода,ему даётся насыщение на 1с
execute if score @s ghost-hunger matches ..19 run effect give @s saturation 1 0

#Если нажать комбинацию из клавиш Shift+Shift,то игрок получит эффект невидимости на 1 мин., кулдаун 30 сек.
execute as @s[scores={crouch=1.., ghost-shift-shift=0}] run scoreboard players set @s ghost-shift-shift 1
execute if score @s ghost-shift-shift matches 0 run scoreboard players set @s ghost-shift-shift-timer 0
execute as @s[scores={crouch=0, ghost-shift-shift=1}] run scoreboard players set @s ghost-shift-shift 2
execute if score @s ghost-shift-shift matches 1.. run scoreboard players add @s ghost-shift-shift-timer 1
execute as @s[scores={crouch=1, ghost-shift-shift=2, ghost-shift-shift-timer=..20, ghost-shift-shift-cooldown=..0, ghost-astral-time=..0}] run function origins:ghost/invisibility
execute if score @s ghost-shift-shift-timer matches 21.. run scoreboard players set @s ghost-shift-shift 0
execute if score @s ghost-shift-shift-cooldown matches 1.. run scoreboard players remove @s ghost-shift-shift-cooldown 1

#Гравець має змінну яка рахує 30 днів
execute if score @s ghost-form-timer matches 1.. run scoreboard players remove @s ghost-form-timer 1

#Коли змінна має значення 0 то накладати ефекти слабость,утомление и медлительность поки значення залишається 0
execute if score @s ghost-form-timer matches ..0 run effect give @s weakness 1 0 true
execute if score @s ghost-form-timer matches ..0 run effect give @s mining_fatigue 1 0 true
execute if score @s ghost-form-timer matches ..0 run effect give @s slowness 1 0 true

#Kоли гравець має у себе в інвентарі предмети Кожа х8, Кость х10, Нить х12, Паучий Глаз х2, Шерсть х3,то видалити ці предмети і поставити значення змінної на 30 днів 
execute if score @s ghost-form-timer matches ..0 run function origins:ghost/check-bones

#Якщо у привида є ліхтар, смолоскип, багаття то вони автоматично перетворюються на відповідник з душами
function origins:ghost/soul-items/change-items

#Якщо на один блок нижче привида пісок або почва душ то він трохи прискорюється
execute if block ~ ~ ~ soul_sand run effect give @s speed 1 5 true
execute if block ~ ~-1 ~ soul_soil run effect give @s speed 1 0 true