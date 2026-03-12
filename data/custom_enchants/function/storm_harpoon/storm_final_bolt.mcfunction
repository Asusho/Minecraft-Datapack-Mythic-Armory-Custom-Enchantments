# 1. L'éclair (UNIQUEMENT s'il y a de l'orage ET que la cible est mouillée ou sous la pluie)
# On vérifie d'abord si le monde est en mode "thunder"
execute if predicate custom_enchants:is_thundering run summon minecraft:lightning_bolt ~ ~ ~
execute if predicate custom_enchants:is_thundering run damage @s 10 minecraft:magic by @p

# 2. Dégâts et Visuel (Ceux-là arrivent toujours, symbolisant l'énergie du trident)
damage @s 4 minecraft:magic by @p
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1

# 4. Nettoyage des effets de suspension
effect clear @s minecraft:levitation
effect clear @s minecraft:slow_falling
effect clear @s minecraft:slowness

# 5. Fin du marquage
tag @s remove storm_target