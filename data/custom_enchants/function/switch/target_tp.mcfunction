execute as @s[type=!#custom_enchants:non_living] run function custom_enchants:switch/tp_exec with storage custom_enchants:player_loc

data remove storage custom_enchants:player_loc posx
data remove storage custom_enchants:player_loc posy
data remove storage custom_enchants:player_loc posz