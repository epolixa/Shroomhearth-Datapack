################################################################
# player in overworld
# mechanics relative to player in overworld per tick
################################################################

# activate porcelain item in overworld
execute as @s[scores={porcelainItem=1..}] at @s run function porcelain:address_player

# return to overworld anchor after exiting porcelain
execute as @s[scores={porcelainAnchor=1..}] at @s run function porcelain:anchored_player_in_overworld
