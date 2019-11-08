#Stage 3:
#	Detect if future rail system is complete
execute if score CurrentLevel Tunnel matches 310..350 in minecraft:the_end unless block 2853 24 2773 minecraft:campfire if block 2851 23 2774 minecraft:dispenser{Items:[{Slot:0b,Count:1b},{Slot:1b,id:"minecraft:iron_bars",Count:1b},{Slot:2b,Count:1b},{Slot:3b,id:"minecraft:redstone",Count:1b},{Slot:4b,id:"minecraft:redstone",Count:1b},{Slot:5b,id:"minecraft:redstone",Count:1b},{Slot:6b,Count:1b},{Slot:7b,Count:1b},{Slot:8b,Count:1b},{id:"minecraft:stone_bricks"}]} run function tunnel:stage3/futuresystemactivates

#	Detect if future rail system is incomplete
execute if score CurrentLevel Tunnel matches 310..350 in minecraft:the_end if block 2853 24 2773 minecraft:campfire unless block 2851 23 2774 minecraft:dispenser{Items:[{Slot:0b,Count:1b},{Slot:1b,id:"minecraft:iron_bars",Count:1b},{Slot:2b,Count:1b},{Slot:3b,id:"minecraft:redstone",Count:1b},{Slot:4b,id:"minecraft:redstone",Count:1b},{Slot:5b,id:"minecraft:redstone",Count:1b},{Slot:6b,Count:1b},{Slot:7b,Count:1b},{Slot:8b,Count:1b},{id:"minecraft:stone_bricks"}]} run function tunnel:stage3/futuresystemdeactivates

#	Detect if present rail system is complete
execute if score CurrentLevel Tunnel matches 310..350 in minecraft:the_end unless block 2859 24 2773 minecraft:campfire if block 2860 23 2775 minecraft:dispenser{Items:[{Slot:0b,Count:1b},{Slot:1b,id:"minecraft:iron_bars",Count:1b},{Slot:2b,Count:1b},{Slot:3b,id:"minecraft:redstone",Count:1b},{Slot:4b,id:"minecraft:redstone",Count:1b},{Slot:5b,id:"minecraft:redstone",Count:1b},{Slot:6b,Count:1b},{Slot:7b,Count:1b},{Slot:8b,Count:1b},{id:"minecraft:stone_bricks"}]} run function tunnel:stage3/presentsystemactivates

#	Detect if present rail system is incomplete
execute if score CurrentLevel Tunnel matches 310..350 in minecraft:the_end if block 2859 24 2773 minecraft:campfire unless block 2860 23 2775 minecraft:dispenser{Items:[{Slot:0b,Count:1b},{Slot:1b,id:"minecraft:iron_bars",Count:1b},{Slot:2b,Count:1b},{Slot:3b,id:"minecraft:redstone",Count:1b},{Slot:4b,id:"minecraft:redstone",Count:1b},{Slot:5b,id:"minecraft:redstone",Count:1b},{Slot:6b,Count:1b},{Slot:7b,Count:1b},{Slot:8b,Count:1b},{id:"minecraft:stone_bricks"}]} run function tunnel:stage3/presentsystemdeactivates

execute if score CurrentLevel Tunnel matches 310..350 if entity @a[scores={TunnelOccupant=1..}] run schedule function tunnel:stage3/railcheck 10

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/railcheck' as: "},{"selector":"@s"}]