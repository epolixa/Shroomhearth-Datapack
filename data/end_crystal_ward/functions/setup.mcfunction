execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:setup enter"}

scoreboard objectives remove wardable
scoreboard objectives add wardable dummy

execute if score Env debug matches 1 run tellraw @a[gamemode=creative] {"color": "gray", "text": "end_crystal_ward:setup exit"}