# set health for deaths
execute as @a[scores={hardcore_deaths=0}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={hardcore_deaths=1}] run attribute @s minecraft:generic.max_health base set 16
execute as @a[scores={hardcore_deaths=2}] run attribute @s minecraft:generic.max_health base set 12
execute as @a[scores={hardcore_deaths=3}] run gamemode spectator @s
execute as @a[scores={hardcore_deaths=3}] run team join dead @s
execute as @a[scores={hardcore_deaths=3}] run scoreboard players set @s health 0
execute as @a[scores={hardcore_deaths=4..}] run scoreboard players set @s hardcore_deaths 3

# pardoned players
execute as @a[scores={hardcore_deaths=-1..2}] run gamemode survival @s
execute as @a[scores={hardcore_deaths=-1..2}] run team leave @s
execute as @a[scores={hardcore_deaths=-1}] run scoreboard players set @s hardcore_deaths 0

# if player uses a HeartCore then give them back a heart
execute as @e[nbt={Item:{tag:{CustomModelData:7740003}}},nbt=!{ItemDropChance:1.0f}] if score @p hardcore_deaths matches 3 run scoreboard players set @p restored_life 1
execute as @e[nbt={Item:{tag:{CustomModelData:7740003}}},nbt=!{ItemDropChance:1.0f}] if score @p hardcore_deaths matches 3 run scoreboard players remove @p hardcore_deaths 1
execute as @e[nbt={Item:{tag:{CustomModelData:7740003}}},nbt=!{ItemDropChance:1.0f}] if score @p restored_life matches 1 run kill @s
execute as @a run scoreboard players set @s restored_life 0

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740003}}]}] if score @s hardcore_deaths matches 1..2 run scoreboard players set @p restored_life 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740003}}]}] if score @s hardcore_deaths matches 1..2 run scoreboard players remove @s hardcore_deaths 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740003}}]}] if score @s restored_life matches 1 run clear @s minecraft:knowledge_book{CustomModelData:7740003}
execute as @a run scoreboard players set @s restored_life 0

# tally and display hearts lost
execute as @a run scoreboard players operation @s hearts_lost = @s hardcore_deaths
execute as @a run scoreboard players operation @s hearts_lost *= 2 dummy

# check if a player wants info
scoreboard players enable @a info
tellraw @a[scores={info=1..}] {"text":"Link To HeartCore Info","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://hollikill.net/html/HeartCore.html"}}
scoreboard players reset @a[scores={info=1..}] info

# turn crafter in a crafting bench
execute as @e[tag=crafter0] at @s run setblock ~ ~ ~ minecraft:dropper
execute as @e[tag=crafter0] run tag @s add crafter1
execute as @e[tag=crafter0] run tag @s remove crafter0

# check crafter
execute as @e[tag=crafter1] at @s unless block ~ ~ ~ minecraft:dropper run kill @s
execute as @e[tag=crafter1] run function heartcore:stage0_check