recipe take @s heartcore:stage1

advancement revoke @s only heartcore:stage1_adv

#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740001}}]}] run give @s minecraft:golden_apple 1
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740001}}]}] run give @s minecraft:slime_ball 1
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740001}}]}] run give @s minecraft:nautilus_shell 1
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740001}}]}] run give @s minecraft:amethyst_shard 2
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740001}}]}] run give @s minecraft:ender_pearl 2
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740001}}]}] run give @s minecraft:phantom_membrane 2
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740001}}]}] run give @s knowledge_book{CustomModelData:7740000,display:{Name:'[{"text":"Pecunsu Apple","italic":false}]',Lore:['[{"text":"An apple infused with essence of","italic":false}]','[{"text":"the deep worlds","italic":false}]']},Unbreakable:1,HideFlags:4} 1

give @s knowledge_book{CustomModelData:7740001,display:{Name:'[{"text":"Palageo Apple","italic":false}]',Lore:['[{"text":"A mystical apple infused with rare","italic":false}]','[{"text":"energies of the overworld, projecting","italic":false}]','[{"text":"a small aura of possiblity","italic":false}]']},Unbreakable:1,HideFlags:4} 1

clear @s minecraft:debug_stick