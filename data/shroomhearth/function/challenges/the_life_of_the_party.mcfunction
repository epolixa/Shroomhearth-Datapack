# Since this advancmeent completes when a player dies, they cannot receive the advancement reward directly, since it will be cleared from their inventory when they respawn.
# Instead, we will tag the player for the reward so that they can be targeted and rewarded after they respawn.

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/the_life_of_the_party] tagging "},{"selector":"@s"},{"text":" for reward"}]


# Tag the player for the reward
tag @s add the_life_of_the_party_respawn
