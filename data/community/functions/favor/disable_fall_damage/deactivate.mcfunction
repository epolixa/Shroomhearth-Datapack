# update gamerule
gamerule fallDamage true

# remove bossbar
bossbar remove community:favor/disable_fall_damage

# announce expiration
tellraw @a [{"text":"The "},{"color":"#FFEFD1","translate":"community.favor.disable_fall_damage","hoverEvent":{"action":"show_text","contents":{"translate":"community.favor.disable_fall_damage.tooltip"}}},{"color":"white","text":" favor has expired "}]

# play sound 
execute as @a at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 1.8

# update active favors 
scoreboard players remove favActive shroomhearth 1