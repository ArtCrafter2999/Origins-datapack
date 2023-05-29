execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run function origins:drop-selected-item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run function origins:drop-selected-item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run function origins:drop-selected-item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run function origins:drop-selected-item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run function origins:drop-selected-item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run function origins:drop-selected-item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] run function origins:drop-selected-item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run function origins:drop-selected-item

#offhand
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:wooden_sword"}]}] run function origins:drop-offhand-item
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] run function origins:drop-offhand-item
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] run function origins:drop-offhand-item
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:golden_sword"}]}] run function origins:drop-offhand-item
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:diamond_sword"}]}] run function origins:drop-offhand-item
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:netherite_sword"}]}] run function origins:drop-offhand-item
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:bow"}]}] run function origins:drop-offhand-item
execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:trident"}]}] run function origins:drop-offhand-item

execute if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:shield"}]}] run function origins:drop-offhand-item