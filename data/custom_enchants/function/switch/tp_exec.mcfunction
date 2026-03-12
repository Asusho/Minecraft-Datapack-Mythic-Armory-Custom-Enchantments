$execute as @s[type=!#custom_enchants:non_living] run tp $(posx) $(posy) $(posz)
execute as @s[type=!#custom_enchants:non_living] run execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
execute as @s[type=!#custom_enchants:non_living] run particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100