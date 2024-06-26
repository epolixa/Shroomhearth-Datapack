# tick value
scoreboard players remove favKeepInventory shroomhearth 1

# update bossbar
execute store result bossbar community:favor/keep_inventory value run scoreboard players get favKeepInventory shroomhearth
bossbar set community:favor/keep_inventory players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favKeepInventory shroomhearth matches ..0 run function community:favor/keep_inventory/deactivate