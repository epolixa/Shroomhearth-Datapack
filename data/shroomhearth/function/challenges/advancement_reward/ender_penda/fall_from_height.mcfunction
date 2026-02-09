# Executor: A player who fell from at least 24 blocks
# Position: the player

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/advancement_reward/ender_penda/fall_from_height] "},{"selector":"@s"},{"text":" fell from at least 24 blocks"}]


# Grant advancement if player is on a slime block at the bottom of the world
advancement grant @s[predicate=shroomhearth:on_slime_block_at_bottom_of_world] only shroomhearth:challenges/ender_penda/bouncin_on_oobleck

# Revoke trigger if advancement not granted
advancement revoke @s[advancements={challenges:ender_penda=false}] only shroomhearth:challenges/ender_penda/fall_from_height