# 1. On cherche la flèche la plus proche du joueur (celle qu'il vient de tirer)
# On limite à 2 blocs pour être sûr de ne pas attraper une flèche qui traîne
execute as @e[type=arrow, distance=..2, limit=1, sort=nearest] run function custom_enchants:lingering/vortex_arrow
scoreboard players set @s bow_charges 0
# 2. Optionnel : Ajouter un petit recul ou un son pour le feedback
playsound minecraft:entity.ender_dragon.shoot player @a ~ ~ ~ 1 0.5