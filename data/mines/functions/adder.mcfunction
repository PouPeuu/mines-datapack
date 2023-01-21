execute as @a[scores={a=1..}] run tag @s add haver
execute as @a[tag=haver] run give @s leather_helmet{display:{Name:"{\"text\":\"Mine\",\"color\":\"green\"}",Lore:["[{\"text\":\"blows up enemies\"}]"],color:6192150},IsMine:1b}
execute as @a[tag=haver] run scoreboard players remove @s a 1
execute as @a[tag=haver] run tag @s remove haver