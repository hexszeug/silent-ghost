execute in sg:silent_desert run stopsound @a[distance=0..]

execute in sg:silent_desert unless entity @e[tag=boss] run scoreboard players add #skillBoss data 1
execute in sg:silent_desert unless entity @e[tag=boss] if score #skillBoss data matches 3 run scoreboard players set #skillBoss data -1
execute in sg:silent_desert if score #isBoss data matches 1.. run function sg:boss/handle

function sg:the_birchism/tick
