# 1. Augmenter la charge du joueur (attacker)
execute as @p[distance=..5] run scoreboard players add @s storm_charge 1

# 2. Effet visuel de charge (petites étincelles sur l'ennemi)
particle minecraft:electric_spark ~ ~1 ~ 0.2 0.5 0.2 0.1 5

# 3. Vérifier si on atteint le maximum (ex: 5 coups)
execute as @p[scores={storm_charge=6..}] at @s run function custom_enchants:storm_harpoon/melee_explosion