execute as @e[scores={usegun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Gun:1}}}] unless entity @s[scores={sneaking=1..}] unless entity @s[scores={bullets=..0}] run tag @s add shooting
execute as @e[scores={usegun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Gun:1}}}] if entity @s[scores={sneaking=1..}] run tag @s add reloading
execute as @e[tag=shooting] run say bam
execute as @e[tag=shooting] at @s anchored eyes run summon armor_stand ^ ^ ^1 {NoGravity:1,Tags:["bullet","bullet_faceme"],Marker:1b,Invisible:1b}
execute as @e[tag=bullet_faceme] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[tag=bullet_faceme] run tag @s remove bullet_faceme
execute as @e[tag=reloading] run say reloading
scoreboard players remove @e[tag=shooting] bullets 1
tag @e remove shooting
tag @e remove reloading
scoreboard players set @e sneaking 0
scoreboard players set @e usegun 0
function gun:bullet
function gun:bullet
function gun:bullet
function gun:bullet
function gun:bullet
function gun:bullet