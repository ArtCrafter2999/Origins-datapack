execute unless entity @e[type=#undead, distance=..1] positioned ^ ^ ^1 run function origins:lich/spells/make-teammate
execute as @e[type=#undead, distance=..1] run tag @e add lich-undead

