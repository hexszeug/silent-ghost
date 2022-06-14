#activate portals
execute as @e[type=snowball] at @s if block ~ ~1 ~ minecraft:stripped_birch_wood if block ~ ~-1 ~ minecraft:stripped_birch_wood if block ~1 ~ ~ minecraft:stripped_birch_wood if block ~-1 ~ ~ minecraft:stripped_birch_wood unless entity @e[tag=the_birchism_portal,distance=..1.5] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["the_birchism_portal","dir_x"]}
execute as @e[type=snowball] at @s if block ~ ~1 ~ minecraft:stripped_birch_wood if block ~ ~-1 ~ minecraft:stripped_birch_wood if block ~ ~ ~1 minecraft:stripped_birch_wood if block ~ ~ ~-1 minecraft:stripped_birch_wood unless entity @e[tag=the_birchism_portal,distance=..1.5] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["the_birchism_portal","dir_z"]}
execute as @e[tag=the_birchism_portal] at @s unless block ~ ~ ~ white_stained_glass_pane run playsound minecraft:block.glass.place block @a[distance=..32] ~ ~ ~ 100 1
execute as @e[tag=the_birchism_portal] at @s run setblock ~ ~ ~ white_stained_glass_pane

#mark players
execute in overworld as @e[tag=the_birchism_portal,distance=0..] at @s as @a[distance=..1.5] at @s if block ~ ~-1 ~ stripped_birch_wood run tag @s add warp_overworld_the_birchism
execute in sg:the_birchism as @e[tag=the_birchism_portal,distance=0..] at @s as @a[distance=..1.5] at @s if block ~ ~-1 ~ stripped_birch_wood run tag @s add warp_the_birchism_overworld
execute as @e[tag=the_birchism_portal,tag=dir_x] at @s as @a[distance=..1.5] at @s if block ~ ~-1 ~ stripped_birch_wood run tag @s add dir_x
execute as @e[tag=the_birchism_portal,tag=dir_z] at @s as @a[distance=..1.5] at @s if block ~ ~-1 ~ stripped_birch_wood run tag @s add dir_z

#warp player
execute in overworld as @a[tag=warp_overworld_the_birchism,distance=0..] at @s in sg:the_birchism run tp @s ~ ~ ~
execute in sg:the_birchism as @a[tag=warp_the_birchism_overworld,distance=0..] at @s in overworld run tp @s ~ ~ ~

#generate portal
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,distance=0..] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 air
execute in overworld as @a[tag=warp_the_birchism_overworld,distance=0..] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 air
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,distance=0..] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 birch_planks
execute in overworld as @a[tag=warp_the_birchism_overworld,distance=0..] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 birch_planks
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_x,distance=0..] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ stripped_birch_wood
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_x,distance=0..] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ stripped_birch_wood
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_z,distance=0..] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 stripped_birch_wood
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_z,distance=0..] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 stripped_birch_wood
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,distance=0..] at @s run setblock ~ ~ ~ air
execute in overworld as @a[tag=warp_the_birchism_overworld,distance=0..] at @s run setblock ~ ~ ~ air
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,distance=0..] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon snowball
execute in overworld as @a[tag=warp_the_birchism_overworld,distance=0..] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon snowball
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_x,distance=0..] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~1.1 0 0
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_x,distance=0..] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~1.1 0 0
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_z,distance=0..] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~1.1 ~ ~ -90 0
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_z,distance=0..] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~1.1 ~ ~ -90 0
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_x,distance=0..] at @s run setblock ~ ~1 ~ birch_trapdoor[half=bottom,open=true,facing=south]
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_x,distance=0..] at @s run setblock ~ ~1 ~ birch_trapdoor[half=bottom,open=true,facing=south]
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_z,distance=0..] at @s run setblock ~ ~1 ~ birch_trapdoor[half=bottom,open=true,facing=east]
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_z,distance=0..] at @s run setblock ~ ~1 ~ birch_trapdoor[half=bottom,open=true,facing=east]
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_x,distance=0..] at @s run setblock ~ ~1 ~-2 birch_trapdoor[half=bottom,open=true,facing=north]
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_x,distance=0..] at @s run setblock ~ ~1 ~-2 birch_trapdoor[half=bottom,open=true,facing=north]
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_z,distance=0..] at @s run setblock ~-2 ~1 ~ birch_trapdoor[half=bottom,open=true,facing=west]
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_z,distance=0..] at @s run setblock ~-2 ~1 ~ birch_trapdoor[half=bottom,open=true,facing=west]
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_x,distance=0..] at @s run tag @s remove dir_x
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_x,distance=0..] at @s run tag @s remove dir_x
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,tag=dir_z,distance=0..] at @s run tag @s remove dir_z
execute in overworld as @a[tag=warp_the_birchism_overworld,tag=dir_z,distance=0..] at @s run tag @s remove dir_z
execute in sg:the_birchism as @a[tag=warp_overworld_the_birchism,distance=0..] at @s run tag @s remove warp_overworld_the_birchism
execute in overworld as @a[tag=warp_the_birchism_overworld,distance=0..] at @s run tag @s remove warp_the_birchism_overworld

#break portals
tag @e[tag=the_birchism_portal] add broken
execute as @e[tag=the_birchism_portal,tag=dir_x] at @s if block ~ ~1 ~ minecraft:stripped_birch_wood if block ~ ~-1 ~ minecraft:stripped_birch_wood if block ~1 ~ ~ minecraft:stripped_birch_wood if block ~-1 ~ ~ minecraft:stripped_birch_wood run tag @s remove broken
execute as @e[tag=the_birchism_portal,tag=dir_z] at @s if block ~ ~1 ~ minecraft:stripped_birch_wood if block ~ ~-1 ~ minecraft:stripped_birch_wood if block ~ ~ ~1 minecraft:stripped_birch_wood if block ~ ~ ~-1 minecraft:stripped_birch_wood run tag @s remove broken
execute as @e[tag=the_birchism_portal,tag=broken] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=the_birchism_portal,tag=broken] at @s run kill @s
