tag @s add craftedmine
tag @e[distance=0..1,nbt={Item:{id:"minecraft:stone_pressure_plate"}},limit=1] add craftedmine
execute as @s store result score @s a run data get entity @s Item.Count
execute as @s at @s run execute as @e[distance=0..1,nbt={Item:{id:"minecraft:stone_pressure_plate"}},tag=craftedmine] store result score @s a run data get entity @s Item.Count
execute as @s at @s run execute as @e[distance=0..1,nbt={Item:{id:"minecraft:stone_pressure_plate"}},tag=craftedmine] run scoreboard players operation @s b = @s a
execute as @s scoreboard players operation @s b = @s a
execute as @s run scoreboard players operation @s b < @e[distance=0..1,nbt={Item:{id:"minecraft:stone_pressure_plate"}},tag=craftedmine] b
execute as @e[tag=craftedmine] run scoreboard players operation @s a -= @s b
execute as @e[tag=craftedmine] store result entity @s Item.Count int 1 run scoreboard players get @s a