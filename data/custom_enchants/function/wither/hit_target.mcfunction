# 1. Incrémenter le compteur
scoreboard players add @s soul_charges 1

# 3. Sons de charge (pitch montant pour donner un feedback auditif)
execute if score @s soul_charges matches 1 run playsound minecraft:block.amethyst_block.hit player @a ~ ~ ~ 1 1.2
execute if score @s soul_charges matches 2 run playsound minecraft:block.amethyst_block.hit player @a ~ ~ ~ 1 1.5
execute if score @s soul_charges matches 3 run playsound minecraft:block.amethyst_block.hit player @a ~ ~ ~ 1 1.5

# 4. Déclencher le combo au 3ème coup
execute if score @s soul_charges matches 4.. run function custom_enchants:wither/blood_burst