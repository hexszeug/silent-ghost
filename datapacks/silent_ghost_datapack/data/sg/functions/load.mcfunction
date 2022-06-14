scoreboard objectives remove data
scoreboard objectives add data dummy






#delete
# kill @e[tag=boss]
# kill @e[tag=boss_dth_dtc]
# bossbar remove boss
#
# clear @a
# replaceitem entity @a hotbar.0 netherite_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s}]} 1
# replaceitem entity @a armor.head netherite_helmet{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s}]} 1
# replaceitem entity @a armor.chest netherite_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s}]} 1
# replaceitem entity @a armor.legs netherite_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s}]} 1
# replaceitem entity @a armor.feet netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s}]} 1
# replaceitem entity @a hotbar.1 golden_apple 64
# replaceitem entity @a hotbar.2 water_bucket 1
# replaceitem entity @a hotbar.3 dirt 64
#
# execute in sg:silent_desert run tp @a 258 128 22
#
# execute in sg:silent_desert run forceload add 0 0
# execute in sg:silent_desert run forceload add -1 0
# execute in sg:silent_desert run forceload add 0 -1
# execute in sg:silent_desert run forceload add -1 -1
