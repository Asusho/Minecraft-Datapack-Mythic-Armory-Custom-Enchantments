

#execute as @a run title @s actionbar {"text":"Le tick tourne !","color":"yellow"}



##################################################################################################################
############################################ MECANIQUES POUR LA MASSE ############################################
##################################################################################################################

# 1. On augmente le score de tout le monde
scoreboard players add @a cooldown_masse 1
execute as @a[scores={cooldown_masse=201..}] run scoreboard players set @s cooldown_masse 200

# 2. Affichage du message "PRÊT" 
# On vérifie si le score est suffisant ET si le joueur tient la masse avec ton enchantement
execute as @a[scores={cooldown_masse=100..}] if items entity @s weapon.mainhand mace[minecraft:custom_data={warden_mace:true}] run title @s actionbar {"text":"⚡ ECHO STRIKE READY ⚡","color":"dark_aqua","bold":true}

# 3. Optionnel : Afficher une barre de chargement quand ce n'est pas prêt
# Version avec affichage du score de 0 à 100
execute as @a[scores={cooldown_masse=..99}] if items entity @s weapon.mainhand mace[minecraft:custom_data={warden_mace:true}] run title @s actionbar ["",{"text":"Recharge : ","color":"gray"},{"score":{"name":"@s","objective":"cooldown_masse"},"color":"white"},{"text":"/100","color":"gray"}]





##################################################################################################################
############################################# MECANIQUES POUR L'EPEE #############################################
##################################################################################################################

# Un compteur qui tourne de 0 à 7 (cycle de 8 ticks)
scoreboard players add #timer soul_charges 1
execute if score #timer soul_charges matches 8.. run scoreboard players set #timer soul_charges 0

# La syntaxe correcte pour détecter le custom_data en 1.21.1
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data={blood_line:true}] run function custom_enchants:wither/display_action_bar





##################################################################################################################
########################################### MECANIQUES POUR LE TRIDENT ###########################################
##################################################################################################################

# Si le joueur a fait au moins 1 kill avec le trident enchanté en main
execute as @a[scores={kills_total=1..}] if items entity @s weapon.mainhand trident[minecraft:custom_data={elder_trident:true}] run function custom_enchants:storm_harpoon/increase_charge

# On remet impérativement le compteur de kills à 0 pour pouvoir détecter le suivant
scoreboard players set @a[scores={kills_total=1..}] kills_total 0


# Si chargé ET regarde le ciel ET s'accroupit (Sneak)
execute as @a[scores={storm_charges=30..}, x_rotation=-90..-60, predicate=minecraft:is_sneaking] if items entity @s weapon.mainhand trident[enchantments~[{enchantment:"custom_enchants:storm_harpoon"}]] at @s run function custom_enchants:storm_harpoon/activate_storm


# Affiche le HUD uniquement si le joueur tient le Perce-Orage
execute as @a if items entity @s weapon.mainhand trident[minecraft:custom_data={elder_trident:true}] run function custom_enchants:storm_harpoon/display_hud


# 1. Détection du trident lancé avec l'enchantement
execute as @e[type=minecraft:trident] if items entity @s contents *[minecraft:custom_data={elder_trident:true}] at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0 2
# Si un trident vole et possède l'enchantement, on lui donne le tag "is_thrown"
execute as @e[type=minecraft:trident] if items entity @s contents *[minecraft:custom_data={elder_trident:true}] run tag @s add is_thrown



# Détecter l'impact du trident lancé sur une entité
execute as @e[type=minecraft:trident,tag=is_thrown] at @s as @e[type=!player,type=!trident, type=!item, distance=..2,limit=1] run function custom_enchants:storm_harpoon/storm_impact

# Détecter l'impact du trident lancé au sol
execute as @e[type=minecraft:trident,tag=is_thrown,nbt={inGround:1b}] at @s run function custom_enchants:storm_harpoon/storm_impact


# Particules sur les ennemis suspendus
execute as @e[tag=storm_target] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0 5

# Faire descendre le chrono pour toutes les cibles marquées
execute as @e[tag=storm_target] run scoreboard players remove @s storm_timer 1

# Quand le chrono arrive à 1 (juste avant la fin de lévitation), on frappe !
execute as @e[tag=storm_target, scores={storm_timer=1}] at @s run function custom_enchants:storm_harpoon/storm_final_bolt





##################################################################################################################
############################################ MECANIQUES POUR LA LANCE ############################################
##################################################################################################################
# Affiche le HUD uniquement si le joueur tient la lance
execute as @a if items entity @s weapon.mainhand #minecraft:spears[minecraft:custom_data={heroic_spear:true}] run function custom_enchants:heroic_spear/display_hud



# Dans tick.mcfunction
execute as @a[scores={kill_count=20..}, x_rotation=-90..-60, predicate=minecraft:is_sneaking] if items entity @s weapon.mainhand #minecraft:spears[minecraft:custom_data={heroic_spear:true}] at @s run function custom_enchants:heroic_spear/trigger_arrow_rain

# Chaque marqueur de nuage génère des particules à chaque tick
execute at @e[tag=CloudMarker] run particle minecraft:cloud ~ ~ ~ 0.8 0.1 0.8 0.02 15



# 1. Empêcher le score de dépasser 20 (optionnel, pour la propreté)
execute as @a[scores={kill_count=21..}] run scoreboard players set @s kill_count 20
