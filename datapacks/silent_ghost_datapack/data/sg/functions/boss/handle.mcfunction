#particles
execute as @e[tag=boss] at @s run particle minecraft:cloud ~ ~1.5 ~ 0 0 0 0 1
execute as @e[tag=boss] at @s run particle minecraft:item_snowball ~ ~ ~ 1 3 1 1 100

#bossbar
execute if entity @e[tag=boss] run bossbar add boss "Silent Ghost"
execute unless entity @e[tag=boss] run bossbar remove boss
execute if entity @e[tag=boss] in sg:silent_desert run bossbar set boss players @a[distance=0..]
execute if entity @e[tag=boss] store result bossbar minecraft:boss value run data get entity @e[limit=1,tag=boss] Health 1
execute if entity @e[tag=boss] store result bossbar minecraft:boss max run attribute @e[tag=boss,limit=1] minecraft:generic.max_health get

#glowing effect
execute as @e[tag=boss] at @s unless entity @a[distance=..32] run effect give @s glowing 1 1 true
execute as @e[tag=boss] at @s if entity @a[distance=..32] run effect clear @s glowing

#death
execute as @e[tag=boss_dth_dtc] run tag @s add dth
execute as @e[tag=boss] at @s run tag @e[tag=boss_dth_dtc,limit=1,sort=nearest,distance=..2] remove dth
execute if entity @e[tag=boss_dth_dtc,tag=dth] run function sg:boss/death

#skills timer
execute if entity @e[tag=boss] run scoreboard players add #tickBoss data 1
execute if score #tickBoss data matches 20 run scoreboard players remove #secBoss data 1
execute if score #tickBoss data matches 20 run scoreboard players set #tickBoss data 0

#skills next
execute if score #secBoss data matches -1 run scoreboard players add #skillBoss data 1
execute if score #skillBoss data matches 4 run scoreboard players set #skillBoss data 0
execute if score #secBoss data matches -1 run scoreboard players set #tickBoss data 0

#skills charging
execute if score #secBoss data matches 3..4 if score #tickBoss data matches 0..19 as @e[tag=boss] at @s run particle composter ~ ~3.5 ~ 2 2 2 50 10
execute if score #secBoss data matches 2 if score #tickBoss data matches 0..19 as @e[tag=boss] at @s run particle composter ~ ~3.5 ~ 2 2 2 10 10
execute if score #secBoss data matches 1 if score #tickBoss data matches 0..19 as @e[tag=boss] at @s run particle composter ~ ~3.5 ~ 0.2 0.2 0.2 0 50

#skill levitation
execute if score #skillBoss data matches 0 if score #secBoss data matches -1 run scoreboard players set #secBoss data 15
execute if score #skillBoss data matches 0 if score #secBoss data matches 0 if score #tickBoss data matches 0 as @e[tag=boss] at @s as @r[distance=0..] at @s run particle minecraft:flash ~ ~5 ~ 0 0 0 0 10
execute if score #skillBoss data matches 0 if score #secBoss data matches 0 if score #tickBoss data matches 0 as @e[tag=boss] at @s as @r[distance=0..] run effect give @s levitation 1 127 true
execute if score #skillBoss data matches 0 if score #secBoss data matches 0 if score #tickBoss data matches 0..19 as @e[tag=boss] at @s as @r[distance=0..] at @s run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0 200

#skill tnt
execute if score #skillBoss data matches 1 if score #secBoss data matches -1 run scoreboard players set #secBoss data 20
execute if score #skillBoss data matches 1 if score #secBoss data matches 0 if score #tickBoss data matches 0..3 as @e[tag=boss] at @s as @r[distance=0..] at @s run summon tnt ~ ~-3 ~ {NoGravity:1b}

#skill fireballs
execute if score #skillBoss data matches 2 if score #secBoss data matches -1 run scoreboard players set #secBoss data 10
execute if score #skillBoss data matches 3 if score #secBoss data matches 0 run effect give @e[tag=boss] fire_resistance 3 255 true
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss] at @s positioned ~ ~2 ~ facing entity @p eyes run summon small_fireball ^ ^ ^2 {power:[0.0,0.0,0.0],Tags:["boss_fireball"],Item:{id:"minecraft:fire_charge",Count:1b}}
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["boss_fireball_dir"]}
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball_dir] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball_dir] at @s run tp @s 0 0 0
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball_dir] at @s rotated as @s run tp @s ^ ^ ^10
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball] at @s store result entity @s power[0] double 0.01 run data get entity @e[tag=boss_fireball_dir,limit=1] Pos[0] 1
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball] at @s store result entity @s power[1] double 0.01 run data get entity @e[tag=boss_fireball_dir,limit=1] Pos[1] 1
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball] at @s store result entity @s power[2] double 0.01 run data get entity @e[tag=boss_fireball_dir,limit=1] Pos[2] 1
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball_dir] at @s run kill @s
execute if score #skillBoss data matches 2 if score #secBoss data matches 0 as @e[tag=boss_fireball] at @s run tag @s remove boss_fireball

#skill tnt self
execute if score #skillBoss data matches 3 if score #secBoss data matches -1 run scoreboard players set #secBoss data 15
execute if score #skillBoss data matches 3 if score #secBoss data matches 0..1 run effect give @e[tag=boss] resistance 1 255 true
execute if score #skillBoss data matches 3 if score #secBoss data matches 0 as @e[tag=boss] at @s run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute if score #skillBoss data matches 3 if score #secBoss data matches 0 as @e[tag=boss] at @s run summon tnt ~ ~1 ~
