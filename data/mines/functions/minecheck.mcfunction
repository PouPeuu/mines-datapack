execute at @s if entity @e[distance=0..1,tag=!mine] run tag @s add exploded
execute as @s[tag=exploded] at @s run summon tnt ~ ~1 ~
execute as @s[tag=exploded] tag @s remove exploded