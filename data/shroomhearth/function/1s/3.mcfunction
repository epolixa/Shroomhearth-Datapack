#tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/3] Executing function set 3"}]


# Porcelain 1s functions
execute if entity @p run function shroomhearth:porcelain/1s

# Re-schedule
schedule function shroomhearth:1s/3 1s