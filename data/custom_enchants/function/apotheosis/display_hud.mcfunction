# --- SECTION MÊLÉE (Gauche) ---
# Si prêt (5), texte spécial, sinon simple compteur
execute if score @s hit_count_spear matches 5.. run scoreboard players set @s combo_ready 1
execute if score @s hit_count_spear matches ..4 run scoreboard players set @s combo_ready 0

# --- SECTION ORAGE (Droite) ---
# Si prêt (20), texte spécial, sinon simple compteur
execute if score @s spear_charge matches 20.. run scoreboard players set @s storm_arrow_ready 1
execute if score @s spear_charge matches ..19 run scoreboard players set @s storm_arrow_ready 0

# --- AFFICHAGE FINAL COMBINÉ ---
# Cas 1 : Rien n'est prêt
execute if score @s combo_ready matches 0 if score @s storm_arrow_ready matches 0 run title @s actionbar ["",{"text":"Coups: ","color":"gray"},{"score":{"name":"@s","objective":"hit_count_spear"},"color":"white"},{"text":"/5  |  ","color":"dark_gray"},{"text":"Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"spear_charge"},"color":"white"},{"text":"/20","color":"white"}]

# Cas 2 : Mêlée prête seulement
execute if score @s combo_ready matches 1 if score @s storm_arrow_ready matches 0 run title @s actionbar ["",{"text":"⚡ RAGE PRÊTE","color":"aqua","bold":true},{"text":"  |  ","color":"dark_gray"},{"text":"Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"spear_charge"},"color":"white"},{"text":"/20","color":"white"}]

# Cas 3 : Orage prêt seulement
execute if score @s combo_ready matches 0 if score @s storm_arrow_ready matches 1 run title @s actionbar ["",{"text":"Coups: ","color":"gray"},{"score":{"name":"@s","objective":"hit_count_spear"},"color":"white"},{"text":"/5  |  ","color":"dark_gray"},{"text":"🏹 PRÊT : SNEAK + CIEL","color":"gold","bold":true}]

# Cas 4 : LES DEUX PRÊTS (Mode Divin)
execute if score @s combo_ready matches 1 if score @s storm_arrow_ready matches 1 run title @s actionbar ["",{"text":"⚡ RAGE PRÊTE","color":"aqua","bold":true},{"text":"  &  ","color":"white"},{"text":"🏹 PRÊT : SNEAK + CIEL","color":"gold","bold":true}]