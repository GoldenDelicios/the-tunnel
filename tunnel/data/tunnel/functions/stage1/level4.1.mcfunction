#Load 1.4.1

setblock 2848 22 2768 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_1.4.1"}
setblock 2848 23 2768 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 141
scoreboard players set NextLevel Tunnel 151

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/level4.1' as: "},{"selector":"@s"}]
