# Score 0 : Trois têtes grises
execute if score @s soul_charges matches 0 run title @s actionbar [{"text":"☠ ☠ ☠","color":"gray","bold":true}]

# Score 1 : Une tête rouge foncé, deux grises
execute if score @s soul_charges matches 1 run title @s actionbar [{"text":"☠","color":"dark_red","bold":true},{"text":" ☠ ☠","color":"gray","bold":true}]

# Score 2 : Deux têtes rouge foncé, une grise
execute if score @s soul_charges matches 2 run title @s actionbar [{"text":"☠ ☠","color":"dark_red","bold":true},{"text":" ☠","color":"gray","bold":true}]


# Tranche 1 : Gras (Légèrement plus large)
execute if score @s soul_charges matches 3.. if score #timer soul_charges matches 0..3 run title @s actionbar {"text":"☠ ☠ ☠","color":"red","bold":true}

# Tranche 2 : Normal (Légèrement plus fin)
# On utilise le rouge vif pour compenser la perte d'épaisseur
execute if score @s soul_charges matches 3.. if score #timer soul_charges matches 4..7 run title @s actionbar {"text":"☠ ☠ ☠","color":"red","bold":false}