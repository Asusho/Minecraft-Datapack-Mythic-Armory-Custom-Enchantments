# Affichage quand l'ultime est chargé (10 kills ou plus)
execute as @a[scores={bow_charges=10..}] run title @s actionbar ["",{"text":"✦ ","color":"light_purple"},{"text":"SINGULARITÉ PRÊTE","color":"dark_purple","bold":true,"italic":true},{"text":" ✦","color":"light_purple"},{"text":" [ MAJ + TIR ]","color":"gray","italic":true}]

# Affichage pendant la charge (entre 1 et 9 kills)
execute as @a[scores={bow_charges=0..9}] run title @s actionbar ["",{"text":"Énergie : ","color":"gray"},{"score":{"name":"@s","objective":"bow_charges"},"color":"light_purple"},{"text":"/10","color":"dark_gray"}]
