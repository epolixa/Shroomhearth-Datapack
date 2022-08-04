# play effects at pedestal
execute positioned 112 75 0 run function random_tp:effects

# show a subtitle to the player as feedback since chunk loading may cause lag
title @s actionbar {"color":"light_purple","text":"Teleporting..."}

# randomly teleport the player
spreadplayers 0 0 0 100000 false @s

# temporarily tag the player
tag @s add random_tp_target

# schedule funtion to remove tag from player after 1 minute
schedule function random_tp:remove_tag 61s

# grant advancement
advancement grant @s[advancements={random_tp:spontaneous_adventure=false}] only random_tp:spontaneous_adventure