################################################################
# Witch Curse
# daydrifter's witch curse randomly spreads between players
################################################################

# increment curse score every tick for whoever has the curse
execute as @e[scores={curse=1..}] run scoreboard players add @s curse 1

# when curse reaches a certain amount, attempt to spread to player within range
execute as @e[scores={curse=6000}] at @s run scoreboard players set @r[distance=..32] curse 1

# reset curse for player who just lost it
execute as @e[scores={curse=6001..}] run scoreboard players set @s curse 0

# display particles around cursed player
execute as @e[scores={curse=1..}] at @s run particle witch ~ ~0.9 ~ 0.2 0.3 0.2 0 1