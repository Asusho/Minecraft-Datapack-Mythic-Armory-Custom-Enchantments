# Effet visuel d'implosion
execute at @e[tag=vortex_active] run particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 0 1
execute at @e[tag=vortex_active] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 2 0.8

# Infliger des dégâts massifs à tous ceux qui ont été aspirés
execute at @e[tag=vortex_active] as @e[distance=..6, type=!player] run damage @s 20 minecraft:magic

# Supprimer le marqueur du vortex
kill @e[tag=vortex_active]