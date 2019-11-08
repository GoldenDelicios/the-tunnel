#Generate intermission stage

#Generate level
setblock 2848 22 2768 minecraft:structure_block{mode:"LOAD",name:"tunnel:tunnel_0.1.0"}
setblock 2848 23 2768 minecraft:redstone_block
scoreboard players set CurrentLevel Tunnel 10
scoreboard players set NextLevel Tunnel 10
scoreboard players set Intermission Tunnel 1

#Generate item frame
summon minecraft:item_frame 2859.50 35.50 2770.03 {Invulnerable:1b, Facing: 3b, Item: {id: "minecraft:spruce_door", Count: 1b, tag: {display: {Name: '{"text":"???"}'}}}, ItemDropChance: 1.0f, Fire: -1s, TileY: 35, TileX: 2859, TileZ: 2762, Tags: ["TunnelFrame"]}

#Check for item frame rotation
schedule function tunnel:intermission/itemframe 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:intermission/generate' as: "},{"selector":"@s"}]