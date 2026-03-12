# Son d'impact
#playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.5

# Pluie de flèches sur les ennemis autour du joueur (@s ici est le joueur)
execute as @e[distance=..30, type=#custom_enchants:hostile] at @s run summon arrow ~ ~10 ~ {Motion:[0.0,-2.0,0.0], damage:7.0, crit:1b, pickup:0b, Tags:["SpearArrow"]}

# Particules d'impact
execute as @e[distance=..30, type=#custom_enchants:hostile] at @s run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0 10