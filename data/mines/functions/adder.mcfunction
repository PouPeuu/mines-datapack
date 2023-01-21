
#execute as @s run 
give @s leather_helmet{display:{Name:"{\"text\":\"Mine\",\"color\":\"green\"}",Lore:["[{\"text\":\"blows up enemies\"}]"],color:6192150},IsMine:1b}
#execute as @s run 
scoreboard players remove @s a 1
