# 1. On cherche le joueur qui a activé le pouvoir
execute as @a[tag=spear_user_active] at @s run function custom_enchants:heroic_spear/execute_impact

# 2. On retire le tag pour que ça ne boucle pas
tag @a[tag=spear_user_active] remove spear_user_active