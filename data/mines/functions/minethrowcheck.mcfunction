execute as @e[type=item,nbt={Item:{tag:{IsMine:1b}},OnGround:1b}] at @s run function mines:mine
kill @e[type=item,nbt={Item:{tag:{IsMine:1b}},OnGround:1b}]