$summon area_effect_cloud ~ ~ ~ \
{\
Radius:4f,\
RadiusPerTick:-0.01f,\
Duration:600,\
potion_contents:{potion:"$(potion)"},\
Tags:["custom_cloud"]}


execute as @e[tag=custom_cloud,sort=nearest] run data modify entity @s Owner set from entity @p UUID