execute as @e[scores={snowball=1..}] at @s run ride @s mount @e[limit=1,type=minecraft:snowball,sort=nearest]
execute as @e[scores={snowball=1..}] run scoreboard players set @s snowball 0