# update gamerule
gamerule keepInventory false

# remove bossbar
bossbar remove community:ordinance/keepinventory

# announce expiration
tellraw @a [{"translate":"community.ordinance.keepinventory_deactivate"}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8