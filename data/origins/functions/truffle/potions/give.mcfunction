clear @p[sort=nearest, tag=truffle, limit=1] potion{Potion:"minecraft:water"} 1

execute at @e[sort=nearest, tag=truffle, limit=1] run summon item ~ ~ ~ {Tags:[truffle-item], Item:{id:"minecraft:potion", Count:1}}
execute if entity @s[tag=gunpowder, tag=!dragon_breath] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.id set value "splash_potion"
execute if entity @s[tag=gunpowder, tag=dragon_breath] run data modify entity @e[sort=nearest, tag=truffle-item, limit=1] Item.id set value "lingering_potion"

function origins:truffle/potions/define-potion
function origins:truffle/potions/define-color
execute if entity @s[tag=glowstone, tag=!truffle-potion-upgraded] run function origins:truffle/potions/define-glowstone
execute if entity @s[tag=redstone, tag=!truffle-potion-upgraded] run function origins:truffle/potions/define-redstone
execute if entity @s[tag=glowstone, tag=truffle-potion-upgraded] run function origins:truffle/potions/define-u-glowstone
execute if entity @s[tag=redstone, tag=truffle-potion-upgraded] run function origins:truffle/potions/define-u-redstone
