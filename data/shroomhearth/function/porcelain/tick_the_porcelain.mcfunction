# Executor: Server
# Position: Spawn coordinates in The Porcelain

#tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/tick_the_porcelain] Ticking in The Porcelain..."}]


# Prevent use of experience bottles and remove any experience orbs to prevent experience farming in The Porcelain
kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=0..]
kill @e[type=experience_orb,distance=0..]