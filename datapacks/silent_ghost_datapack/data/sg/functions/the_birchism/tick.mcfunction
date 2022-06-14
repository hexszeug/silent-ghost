function sg:the_birchism/portal

execute in sg:the_birchism if entity @a[distance=0..] run gamerule doFireTick false
execute in sg:the_birchism unless entity @a[distance=0..] run gamerule doFireTick true
