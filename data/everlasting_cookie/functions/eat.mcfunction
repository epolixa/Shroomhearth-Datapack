loot spawn ~ ~ ~ loot everlasting_cookie:item
data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{relic:"everlasting_cookie"}}}] {PickupDelay:1}
advancement revoke @s only everlasting_cookie:eat