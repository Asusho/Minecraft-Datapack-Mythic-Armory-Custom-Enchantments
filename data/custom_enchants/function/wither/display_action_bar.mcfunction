# --- SECTION ORAGE (Droite) ---
# Si prêt (20), texte spécial, sinon simple compteur
execute if score @s soul_charges matches 20.. run scoreboard players set @s soul_charges_ready 1
execute if score @s soul_charges matches ..19 run scoreboard players set @s soul_charges_ready 0


# Score 0 : Trois têtes grises
execute if score @s soul_charges_ready matches 0 if score @s combo_charges matches 0 run title @s actionbar [{"text":"☠ ☠ ☠","color":"gray","bold":true}, {"text":" | Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"soul_charges"},"color":"white"},{"text":"/20","color":"white"}]

# Score 1 : Une tête rouge foncé, deux grises
execute if score @s soul_charges_ready matches 0 if score @s combo_charges matches 1 run title @s actionbar [{"text":"☠","color":"dark_red","bold":true},{"text":" ☠ ☠","color":"gray","bold":true}, {"text":" | Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"soul_charges"},"color":"white"},{"text":"/20","color":"white"}]

# Score 2 : Deux têtes rouge foncé, une grise
execute if score @s soul_charges_ready matches 0 if score @s combo_charges matches 2 run title @s actionbar [{"text":"☠ ☠","color":"dark_red","bold":true},{"text":" ☠","color":"gray","bold":true}, {"text":" | Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"soul_charges"},"color":"white"},{"text":"/20","color":"white"}]

# Score 3 : Deux têtes rouge foncé, une grise
execute if score @s soul_charges_ready matches 0 if score @s combo_charges matches 3 run title @s actionbar [{"text":"☠ ☠ ☠","color":"dark_red","bold":true}, {"text":" | Victimes: ","color":"gray"},{"score":{"name":"@s","objective":"soul_charges"},"color":"white"},{"text":"/20","color":"white"}]





# Score 0 : Trois têtes grises
execute if score @s soul_charges_ready matches 1 if score @s combo_charges matches 0 run title @s actionbar [{"text":"☠ ☠ ☠","color":"gray","bold":true}, {"text":" | ","color":"dark_red"},{"text":"ARMÉE DES MORTS PRÊTE","color":"red","bold":true},{"text":"  [ MAJ + CIEL ]","color":"gray","italic":true}]

# Score 1 : Une tête rouge foncé, deux grises
execute if score @s soul_charges_ready matches 1 if score @s combo_charges matches 1 run title @s actionbar [{"text":"☠","color":"dark_red","bold":true},{"text":" ☠ ☠","color":"gray","bold":true}, {"text":" | ","color":"dark_red"},{"text":"ARMÉE DES MORTS PRÊTE","color":"red","bold":true},{"text":"  [ MAJ + CIEL ]","color":"gray","italic":true}]

# Score 2 : Deux têtes rouge foncé, une grise
execute if score @s soul_charges_ready matches 1 if score @s combo_charges matches 2 run title @s actionbar [{"text":"☠ ☠","color":"dark_red","bold":true},{"text":" ☠","color":"gray","bold":true}, {"text":" | ","color":"dark_red"},{"text":"ARMÉE DES MORTS PRÊTE","color":"red","bold":true},{"text":"  [ MAJ + CIEL ]","color":"gray","italic":true}]

# Score 3 : Deux têtes rouge foncé, une grise
execute if score @s soul_charges_ready matches 1 if score @s combo_charges matches 3 run title @s actionbar [{"text":"☠ ☠ ☠","color":"dark_red","bold":true}, {"text":" | ","color":"dark_red"},{"text":"ARMÉE DES MORTS PRÊTE","color":"red","bold":true},{"text":"  [ MAJ + CIEL ]","color":"gray","italic":true}]

