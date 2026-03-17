execute as @e[tag=arrow_target] at @s run summon area_effect_cloud ~ ~10 ~ {Tags:["CloudMarker"], Duration:20, Radius:1f}
# Invoque une flèche sur chaque cible marquée 
execute as @e[tag=arrow_target] at @s run summon arrow ~ ~10 ~ {Motion:[0.0,-2.0,0.0], damage:1.0, crit:1b, pickup:0b, Tags:["SpearArrow"]}

execute as @e[tag=SpearArrow,sort=nearest] run data modify entity @s Owner set from entity @p UUID

# Particules d'impact 
execute as @e[tag=arrow_target] at @s run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0 10
execute as @e[tag=arrow_target] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 0.5