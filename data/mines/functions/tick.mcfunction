execute as @a[scores={a=1..}] run function mines:adder
execute as @e[tag=mine] at @s run function mines:minecheck
function mines:crafting/minecraft