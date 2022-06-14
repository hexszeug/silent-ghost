say warp
execute in overworld if entity @s[distance=0..] in sg:the_birchism run tp @s ~ ~ ~
execute in sg:the_birchism if entity @s[distance=0..] in overworld run tp @s ~ ~ ~
fill ~-1 ~-1 ~ ~1 ~1 ~ birch_wood
setblock ~ ~ ~ air
