# Executor: Player in the Porcelain
# Position: the Player

#tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/advancement_reward/location_porcelain] "},{"selector":"@s"},{"text":" is in The Porcelain"}]


# Ensure that any Player in Survival mode is set to Creative mode
gamemode creative @s[gamemode=survival]

# Give the Player a Porcelain if they don't have one
execute store result score @s has_porcelain run clear @s minecraft:warped_fungus_on_a_stick[custom_data={shroomhearth_id:"porcelain"}] 0
loot give @s[scores={has_porcelain=0}] loot shroomhearth:porcelain

# Revoke trigger
advancement revoke @s only shroomhearth:porcelain/location_porcelain