# prevent exploitable items in player inventory
clear @a #porcelain:blacklist

# prevent xp bottles from being deployed
kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=0..]

# prevent xp orbs
kill @e[type=experience_orb,distance=0..]