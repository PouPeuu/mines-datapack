execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mapartgen"],NoGravity:1b}
execute store result score @e[tag=mapartgen,limit=1,sort=nearest] w run scoreboard players get @s w
execute store result score @e[tag=mapartgen,limit=1,sort=nearest] h run scoreboard players get @s h
scoreboard players set @e[tag=mapartgen,limit=1,sort=nearest] index 0
execute store result score @e[tag=mapartgen,limit=1,sort=nearest] startingframe run scoreboard players get @s startingframe
execute as @e[tag=mapartgen,limit=1,sort=nearest] run scoreboard players operation @s maxindex = @s w
execute as @e[tag=mapartgen,limit=1,sort=nearest] run scoreboard players operation @s maxindex *= @s h
execute as @e[tag=mapartgen,limit=1,sort=nearest] run scoreboard players operation @s frameindex = @s startingframe
#execute as @e[tag=mapartgen,limit=1,sort=nearest] at @s run function ezmapart:generateloop