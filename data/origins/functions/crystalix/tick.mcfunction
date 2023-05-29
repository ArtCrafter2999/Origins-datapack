execute if entity @s[tag=!crystalix-new] run scoreboard players set @s crystalix-effect-timer 0
execute if entity @s[tag=!crystalix-new] run tag @s add crystalix-new
team join crystalix @s

#Має постійний ефект світіння (видно крізь блоки). Колір світіння змінюється в залежності від мінералу, або білий
effect give @s glowing 1000000 0 true

#Має 12 хп по стандарту 
attribute @s generic.max_health base set 12

#Збільшує початковий урон на 1 за кожні відсутні 4 хп починаючи з 20
function origins:crystalix/damage-by-health

#Если Кристаликс смотрит в подзорную лупу,получает эффект ночного зрения
advancement revoke @s only origins:crystalix/spyglass

#Если в пределах четырёх блоков во все стороны от Кристаликса находится минимум 6 блоков аметиста/аметистовой жеоды/кристала,При нажатии на шифт он получает 2 единицы урона,но ТОЛЬКО при зажатом шифте он получает силу 2,ночное зрение и сопротивление 1
scoreboard players set @s crystalix-crystal-blocks 0
execute if score @s crouch matches 1.. run function origins:crystalix/check-crystals/stage-1
execute if score @s crystalix-crystal-blocks matches 6.. run effect give @s strength 1 0 false
execute if score @s crystalix-crystal-blocks matches 6.. run effect give @s night_vision 1 0 false
execute if score @s crystalix-crystal-blocks matches 6.. run effect give @s resistance 1 0 false

#Отримує якісь бафи в залежності від того, який мінерал з’їдає. Щоб з’їсти мінерал треба взяти його в ліву (другорядну) руку. Ефект, потужність і час не прописано залежать від мінералу:
function origins:crystalix/minerals/check-mineral
execute if score @s crystalix-effect-timer matches 1.. run scoreboard players remove @s crystalix-effect-timer 1
execute if score @s crystalix-effect-timer matches ..0 run team modify crystalix color dark_purple

execute if score @s crystalix-crystal-blocks matches 30.. run advancement grant @s only origins:general/crystalix/origin