# Executor: Player in The Porcelain who changed their inventory with a consumable item
# Position: the Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/advancement_reward/using_consumable] Removing consumable component from items in "},{"selector":"@s"},{"text":"'s hands"}]


# Modify player hand items to remove consumable components
item modify entity @s weapon.* shroomhearth:remove_consumable

# Revoke trigger
advancement revoke @s only shroomhearth:porcelain/using_consumable