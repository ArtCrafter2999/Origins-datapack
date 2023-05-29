execute if entity @e[nbt={Inventory:[{Slot:103b, id:"minecraft:pumpkin"}]},distance=..1] run effect give @s nausea 5 0 true
execute if block ~ ~ ~ pumpkin run effect give @s nausea 5 0 true
execute if entity @e[distance=..4] unless entity @e[nbt={Inventory:[{Slot:103b, id:"minecraft:pumpkin"}]},distance=..1] unless block ~ ~ ~ pumpkin positioned ^ ^ ^1 run function origins:enderian/look-at-pumkins