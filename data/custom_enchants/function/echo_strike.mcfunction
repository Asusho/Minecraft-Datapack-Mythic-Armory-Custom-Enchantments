# 1. VÉRIFICATION DU COOLDOWN (32 ticks = recharge complète de la masse)
# Si le score est inférieur à 32, on arrête tout
execute as @p unless score @p cooldown_masse matches 100.. run return 0

# 2. SI OK : ON RÉINITIALISE LE SCORE ET ON LANCE L'EFFET
scoreboard players set @p cooldown_masse 0



# 1. Le Son (Le cri du Warden)
playsound entity.warden.sonic_boom player @a ~ ~ ~ 1 1

# 2. Les Particules (L'onde bleue circulaire)
particle minecraft:sonic_boom ~ ~1 ~ 1 0.5 1 0.1 10 force


execute as @e[distance=0.1..6,type=!player] at @s run damage @s 10 minecraft:explosion by @p

# 4. Dégâts de zone (Sonic Boom)
execute as @e[distance=0.1..6,type=!player] at @s run damage @s 5 minecraft:sonic_boom by @p

# 5. Effet de "Stun" (Ralentissement extrême pour 1 seconde)
# Cela évite que les mobs ne reviennent vers toi trop vite après avoir été éjectés
execute at @s run effect give @e[distance=0.1..6,type=!player] minecraft:slowness 5 3 true
