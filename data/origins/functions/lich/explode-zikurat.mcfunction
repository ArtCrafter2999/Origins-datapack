particle explosion ~ ~ ~
playsound entity.generic.explode master @a ~ ~ ~
summon lightning_bolt ~ ~ ~
summon marker ~ ~3 ~ {Tags:[lich-book-spawn]}
scoreboard players set @e[tag=lich-book-spawn, limit=1] lich-zikurat-timer 20
xp add @p[tag=lich] 20 levels