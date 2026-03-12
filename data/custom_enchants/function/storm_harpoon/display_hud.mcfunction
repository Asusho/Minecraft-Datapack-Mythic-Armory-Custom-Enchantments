# --- SECTION MÊLÉE (Gauche) ---
# Si prêt (5), texte spécial, sinon simple compteur
execute if score @s storm_charge matches 5.. run scoreboard players set @s storm_charge_ready 1
execute if score @s storm_charge matches ..4 run scoreboard players set @s storm_charge_ready 0

# --- SECTION ORAGE (Droite) ---
# Si prêt (30), texte spécial, sinon simple compteur
execute if score @s storm_charges matches 30.. run scoreboard players set @s storm_ready 1
execute if score @s storm_charges matches ..29 run scoreboard players set @s storm_ready 0

# --- AFFICHAGE FINAL COMBINÉ ---
# Cas 1 : Rien n'est prêt
execute if score @s storm_charge_ready matches 0 if score @s storm_ready matches 0 run title @s actionbar ["",{"text":"Mêlée: ","color":"gray"},{"score":{"name":"@s","objective":"storm_charge"},"color":"white"},{"text":"/5  |  ","color":"dark_gray"},{"text":"Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"storm_charges"},"color":"white"},{"text":"/30","color":"white"}]

# Cas 2 : Mêlée prête seulement
execute if score @s storm_charge_ready matches 1 if score @s storm_ready matches 0 run title @s actionbar ["",{"text":"⚡ SURCHARGE PRÊTE","color":"aqua","bold":true},{"text":"  |  ","color":"dark_gray"},{"text":"Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"storm_charges"},"color":"white"},{"text":"/30","color":"white"}]

# Cas 3 : Orage prêt seulement
execute if score @s storm_charge_ready matches 0 if score @s storm_ready matches 1 run title @s actionbar ["",{"text":"Mêlée: ","color":"gray"},{"score":{"name":"@s","objective":"storm_charge"},"color":"white"},{"text":"/5  |  ","color":"dark_gray"},{"text":"⚡ ORAGE PRÊT ⚡","color":"gold","bold":true}]

# Cas 4 : LES DEUX PRÊTS (Mode Divin)
execute if score @s storm_charge_ready matches 1 if score @s storm_ready matches 1 run title @s actionbar ["",{"text":"⚡ SURCHARGE","color":"aqua","bold":true},{"text":"  &  ","color":"white"},{"text":"ORAGE PRÊTS ⚡","color":"gold","bold":true}]