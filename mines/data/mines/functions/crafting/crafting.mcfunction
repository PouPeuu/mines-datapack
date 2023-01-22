execute as @e[nbt={Item:{id:"minecraft:tnt"}}] at @s if entity @e[nbt={Item:{id:"minecraft:stone_pressure_plate"}},distance=0..1] run function mines:crafting/minecraft
