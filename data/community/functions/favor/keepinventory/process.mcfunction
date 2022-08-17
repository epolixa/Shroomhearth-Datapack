# tick value
scoreboard players remove favKeepInventory shroomhearth 1

# update bossbar
execute store result bossbar community:favor/keepinventory value run scoreboard players get favKeepInventory shroomhearth
bossbar set community:favor/keepinventory players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favKeepInventory shroomhearth matches ..0 run function community:favor/keepinventory/deactivate