#Triggered when a player places a stone button in stage 3

#If button is not correctly placed, remove and return to sender
execute unless block 2856 27 2773 minecraft:stone_button run fill 2848 23 2768 2862 43 2778 minecraft:air replace minecraft:stone_button
execute unless block 2856 27 2773 minecraft:stone_button run give @s minecraft:stone_button{CanPlaceOn:["#minecraft:stone_bricks"], HideFlags:63}

#Else run buttontntcart
function tunnel:stage3/buttontntcart

advancement revoke @s only tunnel:hidden/placebutton

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/placebutton' as: "},{"selector":"@s"}]
