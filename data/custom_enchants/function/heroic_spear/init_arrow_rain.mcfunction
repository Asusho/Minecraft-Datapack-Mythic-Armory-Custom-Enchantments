# 1. On marque les cibles 
execute as @a[tag=spear_user_active] at @s run tag @e[distance=..30, type=#custom_enchants:hostile] add arrow_target

# 2. On lance la PREMIÈRE flèche immédiatement
function custom_enchants:heroic_spear/spawn_single_arrow

# 3. On programme les 4 suivantes 
schedule function custom_enchants:heroic_spear/spawn_single_arrow 20t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 40t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 60t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 80t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 100t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 120t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 140t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 160t append
schedule function custom_enchants:heroic_spear/spawn_single_arrow 180t append

# 4. On programme le nettoyage des tags pour éviter les bugs au prochain lancement
schedule function custom_enchants:heroic_spear/clear_tags 200t


# 5. On retire le tag pour que ça ne boucle pas
tag @a[tag=spear_user_active] remove spear_user_active