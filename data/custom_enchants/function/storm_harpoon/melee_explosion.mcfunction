# 1. Reset du score
scoreboard players set @s storm_charge 0

# 2. Visuels d'explosion (Uniquement des particules simples sans paramètres)
# Une grosse explosion de fumée
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# Un nuage d'étincelles électriques
particle minecraft:electric_spark ~ ~1 ~ 1.0 1.0 1.0 0.2 100
# L'effet magique pour remplacer le flash
particle minecraft:enchanted_hit ~ ~1 ~ 1.0 1.0 1.0 0.5 50

# 3. Sons et Feedback
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 1.8
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 1.5

# 4. Dégâts de zone
execute at @s as @e[distance=0.1..4,type=!player] run damage @s 8 minecraft:magic by @p