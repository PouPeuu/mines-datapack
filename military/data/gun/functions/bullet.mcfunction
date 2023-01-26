execute as @e[tag=bullet] at @s run tp @s ^ ^ ^-0.5
execute as @e[tag=bullet] at @s if entity @e[distance=0..2,type=!player,tag=!bullet] run tag @s add bullet_kill
execute as @e[tag=bullet_kill] at @s run kill @e[type=zombie,distance=0..2]
kill @e[tag=bullet_kill]
execute as @e[tag=bullet] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=bullet] run scoreboard players add @s timer 1
execute as @e[tag=bullet,scores={timer=10000..}] run kill @s
execute as @e[tag=bullet] at @s run particle cloud ~ ~ ~ 0 0 0 0 1