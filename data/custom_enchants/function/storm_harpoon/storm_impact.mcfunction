execute as @e[type=minecraft:trident,tag=is_thrown,distance=..3,limit=1] run tag @s remove is_thrown

# 1. Petit bond initial (très court pour ne pas monter trop haut)
# On utilise un amplificateur 5 pendant 1 seul tick
execute as @e[distance=..6, type=!player, type=!trident, type=!item, type=!#custom_enchants:non_living] run effect give @s minecraft:levitation 1 5 true

# 2. On les "gèle" en l'air avec une chute lente extrême
# Slow falling empêche de tomber, et comme ils ont une légère impulsion vers le haut, 
# ils vont s'arrêter presque instantanément et flotter.
execute as @e[distance=..6, type=!player, type=!trident, type=!item, type=!#custom_enchants:non_living] run effect give @s minecraft:slow_falling 2 255 true

# 3. Empêcher tout mouvement (Slowness)
execute as @e[distance=..6, type=!player, type=!trident, type=!item, type=!#custom_enchants:non_living] run effect give @s minecraft:slowness 2 255 true

# 4. Marquage et Chrono
tag @e[distance=..6, type=!player, type=!trident, type=!item, type=!#custom_enchants:non_living] add storm_target
scoreboard players set @e[tag=storm_target] storm_timer 30