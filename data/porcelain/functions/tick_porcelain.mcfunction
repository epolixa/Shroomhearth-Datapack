# set players to creative mode
#gamemode creative @a[gamemode=!creative,distance=0..]

# prevent xp bottles from being deployed
kill @e[type=item,nbt={Item:{id:"minecraft:experience_bottle"}},distance=0..]

# prevent xp orbs
kill @e[type=experience_orb,distance=0..]