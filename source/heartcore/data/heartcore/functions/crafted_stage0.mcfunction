recipe take @s heartcore:stage0

advancement revoke @s only heartcore:stage0_adv

#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740000}}]}] run give @s minecraft:golden_apple 1
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740000}}]}] run give @s minecraft:diamond 4
#execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740000}}]}] run give @s minecraft:netherite_scrap 4

give @s knowledge_book{CustomModelData:7740000,display:{Name:'[{"text":"Pecunsu Apple","italic":false}]',Lore:['[{"text":"An apple infused with essence of","italic":false}]','[{"text":"the deep worlds","italic":false}]']},Unbreakable:1,HideFlags:4} 1

clear @s minecraft:debug_stick