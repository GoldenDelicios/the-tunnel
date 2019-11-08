#Generate tunnel man cave

setblock 2830 22 2758 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_mancave"}
setblock 2830 23 2758 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 500
scoreboard players set NextLevel Tunnel 500

#Generate lecterns, villager, and item frame
setblock 2859 34 2779 minecraft:redstone_block
setblock 2843 32 2779 minecraft:redstone_block
execute positioned 2835.5 33.0 2769.5 run function tunnel:mancave/summonjeff
summon minecraft:item_frame 2859.50 35.50 2762.03 {Invulnerable:1b, Facing: 3b, Item: {id: "minecraft:spruce_door", Count: 1b, tag: {display: {Name: '{"text":"Exit"}'}}}, ItemDropChance: 1.0f, Fire: -1s, TileY: 35, TileX: 2859, TileZ: 2762, Tags: ["TunnelFrame"]}
execute if score EnableRestarts Tunnel matches 1 run setblock 2859 35 2764 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if score EnableRestarts Tunnel matches 1 run function tunnel:restart"}}',Text2:'{"text":"Click to","clickEvent":{"action":"run_command","value":"setblock ~ ~ ~ minecraft:air"},"bold":true}',Text3:'{"text":"restart Tunnel","bold":true}'}

#Check to break wall
schedule function tunnel:mancave/wall 10
schedule function tunnel:mancave/itemframe 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:mancave/generate' as: "},{"selector":"@s"}]