execute if entity @e[distance=0..1,tag=!mine] run tag @s add exploded
execute as @s[tag=exploded] run summon tnt ~ ~1 ~
execute as @s[tag=exploded] run tag @s remove exploded