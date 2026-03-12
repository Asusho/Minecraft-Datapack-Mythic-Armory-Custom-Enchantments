schedule function custom_enchants:anchor/remove 10t

execute as @e[type=happy_ghast] unless items entity @s armor.body *[minecraft:enchantments~[{"custom_enchants:anchor":1}]] run attribute @s minecraft:flying_speed modifier remove custom_enchants:anchor
execute as @e[type=happy_ghast] if predicate custom_enchants:entity/has_passenger run attribute @s minecraft:flying_speed modifier remove custom_enchants:anchor

execute as @e[type=#custom_enchants:rideable] unless items entity @s saddle *[minecraft:enchantments~[{"custom_enchants:anchor":1}]] run attribute @s minecraft:movement_speed modifier remove custom_enchants:anchor
execute as @e[type=#custom_enchants:rideable] if predicate custom_enchants:entity/has_passenger run attribute @s minecraft:movement_speed modifier remove custom_enchants:anchor