# On tue les alliés proprement avec des particules de fumée
execute at @e[tag=wither_ally] run particle minecraft:large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.05 10

execute as @e[tag=wither_ally] at @s run tp @s ~ -100 ~
kill @e[tag=wither_ally]
# On retire le joueur de la team pour qu'il redevienne une cible normale plus tard
team leave @a