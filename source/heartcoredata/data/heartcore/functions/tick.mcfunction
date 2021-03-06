# add bonus lives from apples
execute as @a[scores={stage0=0,stage1=0,stage2=0,stage3=0}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={stage0=1,stage1=0,stage2=0,stage3=0}] run attribute @s minecraft:generic.max_health base set 22
execute as @a[scores={stage1=1,stage2=0,stage3=0}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={stage2=1,stage3=0}] run attribute @s minecraft:generic.max_health base set 26
execute as @a[scores={stage3=1}] run attribute @s minecraft:generic.max_health base set 30
# add bonus effects from apples
execute as @a[scores={stage0=1}] run effect give @s minecraft:night_vision 15 0 true
execute as @a[scores={stage1=1}] run effect give @s minecraft:haste 15 0 true
execute as @a[scores={stage2=1}] run effect give @s minecraft:dolphins_grace 15 0 true
execute as @a[scores={stage2=1}] run effect give @s minecraft:speed 15 0 true
execute as @a[scores={stage3=1}] run effect give @s minecraft:haste 15 1 true

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740000}}]}] unless score @s stage0 matches 1 run scoreboard players set @s temp_true 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740000}}]},scores={temp_true=1}] unless score @s stage0 matches 1 run scoreboard players set @s stage0 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740000}}]},scores={temp_true=1}] run clear @s minecraft:glistering_melon_slice{CustomModelData:7740000}
execute as @a[scores={temp_true=1..}] run scoreboard players set @s temp_true 0

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740001}}]}] unless score @s stage1 matches 1 run scoreboard players set @s temp_true 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740001}}]},scores={temp_true=1}] unless score @s stage1 matches 1 run scoreboard players set @s stage1 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740001}}]},scores={temp_true=1}] run clear @s minecraft:glistering_melon_slice{CustomModelData:7740001}
execute as @a[scores={temp_true=1..}] run scoreboard players set @s temp_true 0

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740002}}]}] unless score @s stage2 matches 1 run scoreboard players set @s temp_true 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740002}}]},scores={temp_true=1}] unless score @s stage2 matches 1 run scoreboard players set @s stage2 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740002}}]},scores={temp_true=1}] run clear @s minecraft:glistering_melon_slice{CustomModelData:7740002}
execute as @a[scores={temp_true=1..}] run scoreboard players set @s temp_true 0

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740003}}]}] unless score @s stage3 matches 1 run scoreboard players set @s temp_true 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740003}}]},scores={temp_true=1}] unless score @s stage3 matches 1 run scoreboard players set @s stage3 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740003}}]},scores={temp_true=1}] run clear @s minecraft:glistering_melon_slice{CustomModelData:7740003}
execute as @a[scores={temp_true=1..}] run scoreboard players set @s temp_true 0

# check if a player wants info
scoreboard players enable @a info
tellraw @a[scores={info=1..}] {"text":"Link To HeartCore Info","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"Click here for info."}}
scoreboard players reset @a[scores={info=1..}] info

# turn crafter in a crafting bench
execute as @e[tag=crafter0] at @s run setblock ~ ~ ~ minecraft:dropper[facing=up,triggered=true]{CustomName:'{"text":"HeartCore Crafting Table","color":"dark_red"}'}
execute as @e[tag=crafter0] run tag @s add crafter1
execute as @e[tag=crafter0] run tag @s remove crafter0

execute as @a[nbt={Inventory:[{id:"minecraft:dropper",tag:{display:{Name:'{"color":"dark_red","text":"HeartCore Crafting Table"}'}}}]}] run function heartcore:crafted_crafter
execute as @a[nbt={Inventory:[{id:"minecraft:dropper",tag:{display:{Name:'{"color":"dark_red","text":"HeartCore Crafting Table"}'}}}]}] run clear @s dropper{display:{Name:'{"color":"dark_red","text":"HeartCore Crafting Table"}'}} 1

# check crafter
execute as @e[tag=crafter1] at @s unless block ~ ~ ~ minecraft:dropper run kill @s
execute as @e[tag=crafter1] at @s unless block ~ ~ ~ minecraft:dropper[facing=up,triggered=true] unless block ~ ~ ~ minecraft:dropper{Items:[{Count:1b}]} run setblock ~ ~ ~ minecraft:dropper[facing=up,triggered=true]

execute as @e[tag=crafter1] run function heartcore:craft_stage0
execute as @e[tag=crafter1] run function heartcore:craft_stage1
execute as @e[tag=crafter1] run function heartcore:craft_stage2
execute as @e[tag=crafter1] run function heartcore:craft_stage3
execute as @e[tag=crafter1] run function heartcore:craft_godblood
execute as @e[tag=crafter1] run function heartcore:craft_cunife_ingot
execute as @e[tag=crafter1] run function heartcore:craft_cunife_block
execute as @e[tag=crafter1] run function heartcore:craft_anvil
execute as @e[tag=crafter1] run function heartcore:craft_duralite_ingot
execute as @e[tag=crafter1] run function heartcore:craft_ubermeat

# clear bonus on death & init bonus counters
execute as @a[scores={health=0}] run scoreboard players set @s stage0 0
execute as @a[scores={health=0}] run scoreboard players set @s stage1 0
execute as @a[scores={health=0}] run scoreboard players set @s stage2 0
execute as @a[scores={health=0}] run scoreboard players set @s stage3 0
execute as @a unless score @s stage0 matches 0..1 run scoreboard players set @s stage0 0
execute as @a unless score @s stage1 matches 0..1 run scoreboard players set @s stage1 0
execute as @a unless score @s stage2 matches 0..1 run scoreboard players set @s stage2 0
execute as @a unless score @s stage3 matches 0..1 run scoreboard players set @s stage3 0

# clear placeholder items
execute as @a[nbt={Inventory:[{id:"minecraft:debug_stick",tag:{CustomModelData:1}}]}] run clear @s debug_stick
execute as @e[type=item,nbt={Item:{id:"minecraft:debug_stick",tag:{CustomModelData:1}}}] run kill @s
execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] run function heartcore:update

# give saturation if ubermeat is eaten
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_apple",tag:{CustomModelData:7740008}}}] run scoreboard players set @s hold_ubermeat 1
execute as @a[scores={hold_ubermeat=1,use_gold_apple=1..}] run effect give @s minecraft:saturation 100 9 true
execute as @a[scores={hold_ubermeat=1,use_gold_apple=1..}] run effect give @s minecraft:strength 120 0
execute as @a[scores={hold_ubermeat=1,use_gold_apple=1..}] run effect clear @s minecraft:regeneration
execute as @a[scores={use_gold_apple=1..}] run scoreboard players reset @s use_gold_apple
execute as @a[scores={hold_ubermeat=1..}] run scoreboard players reset @s hold_ubermeat