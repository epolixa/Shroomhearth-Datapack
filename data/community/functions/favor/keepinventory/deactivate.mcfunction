# update gamerule
gamerule keepInventory false

# remove bossbar
bossbar remove community:favor/keepinventory

# announce expiration
tellraw @a [{"translate":"community.favor.keepinventory_deactivate"}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1