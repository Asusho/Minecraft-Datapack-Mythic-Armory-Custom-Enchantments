# 1. Reset des scores et marquage du joueur
scoreboard players set @s spear_charge 0
tag @s add spear_user_active

# Le Cor (ambiance raid)
execute as @a run playsound minecraft:block.bell.use master @s ~ ~ ~ 10 0.6
# Un éclair lointain (pour le côté "impact céleste")
execute as @a run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.2 1.2


# Buffs
summon area_effect_cloud ~ ~ ~ {Radius:25,Duration:6,custom_particle:{type:firefly},potion_contents:{custom_color:16351261}}
execute at @s run effect give @a[distance=..25] minecraft:strength 45 0
execute at @s run effect give @a[distance=..25] minecraft:speed 45 0
execute at @s run effect give @a[distance=..25] minecraft:absorption 45 0
execute at @s run effect give @a[distance=..25] minecraft:resistance 45 0
execute at @s run effect give @a[distance=..25] minecraft:regeneration 30 0


execute at @s run effect give @s minecraft:saturation 1 8
execute at @s run effect give @s minecraft:strength 15 2
execute at @s run effect give @s minecraft:speed 15 2
execute at @s run effect give @s minecraft:strength 30 1
execute at @s run effect give @s minecraft:speed 30 1
execute at @s run effect give @s minecraft:resistance 30 1
execute at @s run effect give @s minecraft:regeneration 10 1


# 3. Programmer la chute des flèches dans 20 ticks (1 seconde)
# On augmente un peu le délai pour profiter du nuage
schedule function custom_enchants:apotheosis/init_arrow_rain 20t append