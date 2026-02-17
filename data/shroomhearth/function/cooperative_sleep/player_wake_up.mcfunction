# announce player woke up
tellraw @a [{"selector":"@s"},{"text":" woke up","color":"white"}]

# remove sleeping tag
tag @s remove sleeping

# query time and reset weather if player woke up during day (likely a full sleep)
execute store result score shroomhearth time run time of minecraft:overworld query time
execute unless score shroomhearth time matches 12010..23992 run weather clear