# 1. Préparation : On compte les ennemis dans un rayon de 5 blocs
# On utilise un score "temp" pour stocker le nombre d'entités
execute store result score #count combo_charges if entity @e[distance=0.1..5,type=!player]

# 2. Particules d'explosion
execute at @s run particle block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 1 1 1 0.1 100

# 3. Dégâts de zone
execute at @s as @e[distance=0.1..5,type=!player] run damage @s 6 

# 4. LE SOIN CONDITIONNEL
# Cas A : Entre 1 et 3 ennemis -> Instant Health I (2 cœurs)
execute if score #count combo_charges matches 1..3 run effect give @p minecraft:instant_health 1 0 true

# Cas B : Plus de 3 ennemis -> Instant Health II (4 cœurs)
execute if score #count combo_charges matches 4.. run effect give @p minecraft:instant_health 1 1 true

# 5. Son et Reset des scores
playsound entity.generic.drink player @a ~ ~ ~ 1 1.5
scoreboard players set @s combo_charges 0