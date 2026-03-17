team join wither_army @a
scoreboard players set @s soul_charges 0

playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.5
execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 5 5 5 0.5 2000 force


summon wither_skeleton ~ ~1 ~4 {Tags:["wither_ally"],equipment:{mainhand:{id:"minecraft:stone_sword"}}}
summon wither_skeleton ~4 ~1 ~1 {Tags:["wither_ally"],equipment:{mainhand:{id:"minecraft:stone_sword"}}}
summon wither_skeleton ~-4 ~1 ~1 {Tags:["wither_ally"],equipment:{mainhand:{id:"minecraft:stone_sword"}}}
summon wither_skeleton ~3 ~1 ~-3 {Tags:["wither_ally"],equipment:{mainhand:{id:"minecraft:stone_sword"}}}
summon wither_skeleton ~-3 ~1 ~-3 {Tags:["wither_ally"],equipment:{mainhand:{id:"minecraft:stone_sword"}}}


execute as @e[tag=wither_ally] run team join wither_army @s

schedule function custom_enchants:wither/clear_undead_spawn 25s