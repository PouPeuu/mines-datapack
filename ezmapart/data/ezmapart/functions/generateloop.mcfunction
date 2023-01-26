execute if score @s index > @s maxindex run kill @s
summon minecraft:item_frame ~ ~ ~ {Tags:["unset"],Item:{id:"minecraft:filled_map",Count:1b},Facing:3b}
execute store result entity @e[tag=unset,limit=1,sort=nearest] Item.tag.map int 1 run scoreboard players get @s frameindex
tp ~1 ~ ~
scoreboard players add @s index 1
scoreboard players add @s frameindex 1
#function ezmapart:generateloop