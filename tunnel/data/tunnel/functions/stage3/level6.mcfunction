#Load 3.6.0

setblock 2848 22 2762 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_loop"}
setblock 2848 23 2762 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 360
scoreboard players set NextLevel Tunnel 360

schedule function tunnel:stage3/codecheck 200

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/level6' as: "},{"selector":"@s"}]