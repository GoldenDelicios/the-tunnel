#Load 1.6.1

setblock 2848 22 2768 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_1.6.1"}
setblock 2848 23 2768 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 161
scoreboard players set NextLevel Tunnel 210

schedule function tunnel:stage1/doorfalls 20

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/level6.1' as: "},{"selector":"@s"}]
