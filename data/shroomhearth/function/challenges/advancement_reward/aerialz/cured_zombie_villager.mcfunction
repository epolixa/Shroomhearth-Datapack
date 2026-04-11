# Executor: A player who cured a Zombie Villager
# Position: the player

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/advancement_reward/aerialz/cured_zombie_villager] "},{"selector":"@s"},{"text":" cured a Zombie Villager"}]


# Increment score
scoreboard players add @s cured_zombie_villager 1

# Grant advancement if score is 27 or higher
advancement grant @s[scores={cured_zombie_villager=27..}] only shroomhearth:challenges/aerialz/curare_immortui

# Revoke trigger
advancement revoke @s only shroomhearth:challenges/aerialz/cured_zombie_villager