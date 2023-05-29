execute if entity @s[nbt={Inventory:[{Slot:100b}]}] run function origins:ghost/drop-armor/drop-boots
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] run function origins:ghost/drop-armor/drop-leggings
execute if entity @s[nbt={Inventory:[{Slot:102b}]}, nbt=!{Inventory:[{Slot:102b, id:"minecraft:elytra"}]}] run function origins:ghost/drop-armor/drop-chestplate
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] run function origins:ghost/drop-armor/drop-helmet