#Summon tnt cart

scoreboard players set NextLevel Tunnel 360
execute in the_end run summon minecraft:tnt_minecart 2856 26 2773 {Tags:["TunnelTNTCart"], Motion:[-0.3, 0.0, 0.0], TNTFuse:100}
schedule function tunnel:stage3/tntcart1 15

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/tntcart' as: "},{"selector":"@s"}]