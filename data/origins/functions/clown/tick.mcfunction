execute if entity @s[tag=!clown-new] run scoreboard players set @s clown-anvil-timer 48000
execute if entity @s[tag=!clown-new] run scoreboard players set @s clown-random-effect-timer 6000
execute if entity @s[tag=!clown-new] run scoreboard players set @s clown-effect-charge-timer 24000
execute if entity @s[tag=!clown-new] run tag @s add clown-new

#Если в инвентаре клоуна находится динамит более 6-и минут он умирает
execute unless entity @s[nbt={Inventory:[{id:"minecraft:tnt"}]}] run scoreboard players set @s clown-dinamite-timer 7200
execute if entity @s[nbt={Inventory:[{id:"minecraft:tnt"}]}] run scoreboard players remove @s clown-dinamite-timer 1
execute if score @s clown-dinamite-timer matches ..0 run kill @s

#Если в инвентаре клоуна находится огниво более 5-и минут он самовозгорается
execute unless entity @s[nbt={Inventory:[{id:"minecraft:flint_and_steel"}]}] run scoreboard players set @s clown-lighter-timer 6000
execute if entity @s[nbt={Inventory:[{id:"minecraft:flint_and_steel"}]}] run scoreboard players remove @s clown-lighter-timer 1
execute if score @s clown-lighter-timer matches ..0 run summon small_fireball ~ ~2.1 ~ {Fire:1,direction:[0.0,-1.0,0.0],power:[0.0,-1.0,0.0]}
execute if score @s clown-lighter-timer matches ..0 run scoreboard players set @s clown-lighter-timer 200

#Раз в 40 минут на него падает наковальня,если он на открытом воздухе.Наковальня спавниться на 40 блоков выше клоуна.Наковальня ломается при падении
execute if score @s clown-anvil-timer matches ..0 if block ~ ~ ~ #passable if blocks ~ ~ ~ ~ 318 ~ ~ ~2 ~ all run function origins:clown/drop-anvil
execute if score @s clown-anvil-timer matches ..0 if block ~ ~1 ~ #passable if blocks ~ ~1 ~ ~ 318 ~ ~ ~2 ~ all run function origins:clown/drop-anvil
execute if score @s clown-anvil-timer matches 1.. run scoreboard players remove @s clown-anvil-timer 1

#Клоун будет получать урон,если он стоит на месте более суток,после истечения таймера,будет наносится урон по 2 единицы урона каждые 4 минуты
execute if score @s clown-move matches ..0 run scoreboard players remove @s clown-stand-still-timer 1
execute if score @s clown-move matches 1.. run scoreboard players set @s clown-stand-still-timer 24000
execute if score @s clown-stand-still-timer matches ..0 run damage @s 2
execute if score @s clown-stand-still-timer matches ..0 run scoreboard players set @s clown-stand-still-timer 4800
scoreboard players set @s clown-move 0

#Клоун получает скорость 1,если он находится в 20-и блоках от включенного проигрывателя
#Клоун получает эффект слепоты и тошноты,если он вблизи 5-и блоков от торта
function origins:clown/20blocks/stage-1

#Если он сделает “Хонк-хонк” рогом козла,то даст окружающим в 15-и блоков от себя эффект,который зависит от рога на 30 секунд для положительных эффектов,и 10 для негативных
execute if score @s clown-honk matches 1.. run function origins:clown/honk-honk
scoreboard players set @s clown-honk 0

#Раз в пять минут получает случайный эффект
#Положительные эффекты на 25 секунд
#Негативные на 30 секунд(Исключение - Отравление и иссушение,они должны длится не более 6-и секунд.)
#Эффекты,которые не могут выдаваться:герой деревни,bad omen,насыщенность
execute if score @s clown-random-effect-timer matches ..0 run function origins:clown/get-random-effect
execute if score @s clown-random-effect-timer matches ..0 run scoreboard players set @s clown-random-effect-timer 6000
execute if score @s clown-random-effect-timer matches 1.. run scoreboard players remove @s clown-random-effect-timer 1

#Кожні 20 хвилин Клоун заряджається позитивним або негативним ефектом (4/1) і коли інший гравець опиниться поряд накладає цей ефект на півхвилини
execute if score @s clown-effect-charge-timer matches ..0 run function origins:clown/effect-charge
execute if score @s clown-effect-charge-timer matches 1.. run scoreboard players remove @s clown-effect-charge-timer 1
execute if score @s clown-effect-charged matches 0.. as @a[distance=..12] anchored eyes at @s run function origins:clown/raycast