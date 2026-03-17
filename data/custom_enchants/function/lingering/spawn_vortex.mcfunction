# Invoquer un marqueur invisible au point d'impact
summon armor_stand ~ ~ ~ {Tags:["vortex_center","vortex_active"],Invisible:1b,Marker:1b}

# Supprimer la flèche pour éviter que la fonction boucle
kill @e[tag=vortex_arrow, distance=..1, limit=1]


# Lancer un timer de 4 secondes pour tuer le vortex à la fin
schedule function custom_enchants:lingering/vortex_explosion 4s