effect give @s invisibility 4 0 true

summon villager ~ ~ ~ {Tags: [illager-villager, illager-villager-new], DeathLootTable:"minecraft:empty", Team: illager, VillagerData: {profession: cleric, level: 99, type: swamp}, Invulnerable: 1, Silent: 1, CustomName: "\"Witch\""}
execute if entity @s[scores={illager-save-index=..-1}] run function origins:illager/trades/randomize-trades
tag @e[tag=illager-villager-new] remove illager-villager-new


data modify entity @s Silent set value 1
team leave @s
data modify entity @s DeathLootTable set value "minecraft:empty"
kill @s