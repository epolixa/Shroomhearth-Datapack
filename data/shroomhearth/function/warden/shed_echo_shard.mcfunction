# Executor: A Warden shedding the Echo Shard
# Position: The Warden

tellraw @a[tag=debug_warden] [{"text":"[shroomhearth:warden/shed_echo_shard] "},{"selector":"@s"},{"text":" is shedding an Echo Shard"}]


# Play particle effects
particle minecraft:block{block_state:{Name:"minecraft:sculk_catalyst"}} ~ ~1.5 ~ 0.5 1 0.5 0.05 8

# Play sound effects
playsound minecraft:block.sculk_catalyst.break hostile @a ~ ~1.5 ~ 1 0.5
playsound minecraft:entity.turtle.egg_break hostile @a ~ ~1.5 ~ 1 1.5

# Drop the Echo Shard loot
loot spawn ~ ~1.5 ~ loot shroomhearth:warden_shed