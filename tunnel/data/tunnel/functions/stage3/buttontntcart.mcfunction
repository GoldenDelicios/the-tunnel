#Check when to summon tnt cart

execute in the_end if block 2856 27 2773 minecraft:stone_button[powered=true] run function tunnel:stage3/tntcart
execute in the_end if block 2856 27 2773 minecraft:stone_button[powered=false] run schedule function tunnel:stage3/buttontntcart 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/buttontntcart' as: "},{"selector":"@s"}]
