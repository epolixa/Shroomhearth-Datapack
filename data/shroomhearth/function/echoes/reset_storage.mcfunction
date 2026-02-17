# Resets the storage for use with the echoes system

# players stores an array of player objects that track the position of online players
# {uuid: int[], name: string, position: {x: double, y: double, z: double}, dimension: string}
data modify storage shroomhearth:echoes players set value []

# players_index is used to track the current index in the players array while iterating through it
data modify storage shroomhearth:echoes players_index set value 0

tellraw @a[tag=debug_echoes] "[shroomhearth:echoes/reset_storage] Storage reset"