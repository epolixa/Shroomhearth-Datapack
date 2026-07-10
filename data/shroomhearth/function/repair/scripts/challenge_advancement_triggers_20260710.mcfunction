# Several challenge advancements stopped working in the 26.1 datapack update due to issues either with their triggers or reward functions.
# In some cases the tracking for these advancements got into a bad state where their triggers would not be reset due to failures in their reward functions. 
# The underlying issues in these advancements have been fixed in the 26.2 update, but the advancement triggers need to be manually reset in order to continue tracking normally.
# This function is intended to be run once for each player to reset the triggers for these advancements.

tellraw @a[tag=debug_repair] [{"text":"[shroomhearth:repair/scripts/challenge_advancement_triggers_20260710] Resetting advancement triggers for "},{"selector":"@s"}]


# _thebman_ - place_sandstone
advancement revoke @s only shroomhearth:challenges/_thebman_/place_sandstone

# aerialz - cured_zombie_villager
advancement revoke @s only shroomhearth:challenges/aerialz/cured_zombie_villager

# almightya - mined_base_stone_overworld
advancement revoke @s only shroomhearth:challenges/almightya/mined_base_stone_overworld

# depressus - inventory_changed_golden_carrots
advancement revoke @s only shroomhearth:challenges/depressus/inventory_changed_golden_carrots

# ender_penda - fall_from_height
advancement revoke @s only shroomhearth:challenges/ender_penda/fall_from_height

# epolixa - consume_non_melon_slice
advancement revoke @s only shroomhearth:challenges/epolixa/consume_non_melon_slice

# flynthazzard - filled_tadpole_bucket
advancement revoke @s only shroomhearth:challenges/flynthazzard/filled_tadpole_bucket

# krstfr - wear_carved_pumpkin
advancement revoke @s only shroomhearth:challenges/krstfr/wear_carved_pumpkin

# needle_archer - placed_block_in_the_nether
advancement revoke @s only shroomhearth:challenges/needle_archer/placed_block_in_the_nether

# omega825 - place_rail
advancement revoke @s only shroomhearth:challenges/omega825/place_rail

# skit - place_skit_stone
advancement revoke @s only shroomhearth:challenges/skit/place_skit_stone


# Tag the player so that this script does not run for them again
tag @s add repair_challenge_advancement_triggers_20260710