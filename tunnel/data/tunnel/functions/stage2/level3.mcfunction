#Load 2.3.0

setblock 2848 22 2768 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_2.3.0"}
setblock 2848 23 2768 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 230
scoreboard players set NextLevel Tunnel 240

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage2/level3' as: "},{"selector":"@s"}]
