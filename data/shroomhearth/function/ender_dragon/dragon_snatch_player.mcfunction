# Executor: Player that is being snatched by the Omen Ender Dragon
# Position: The Omen Ender Dragon

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/dragon_snatch_player] "},{"selector":"@s"},{"text":" was snatched by the Ender Dragon"}]


# Start riding the dragon
ride @s mount @n[tag=omen_ender_dragon]

# Update the dragon's snatch cooldown
scoreboard players set @n[tag=omen_ender_dragon] snatch_cooldown 10