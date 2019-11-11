#Add or remove cracks

fill 2857 33 2776 2857 35 2778 minecraft:stone_bricks
execute if score Masks Tunnel matches 1.. run setblock 2857 35 2778 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 2.. run setblock 2857 33 2776 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 3.. run setblock 2857 33 2778 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 4.. run setblock 2857 35 2776 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 5.. run setblock 2857 34 2776 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 6.. run setblock 2857 35 2777 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 7.. run setblock 2857 34 2778 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 8.. run setblock 2857 34 2777 minecraft:cracked_stone_bricks
execute if score Masks Tunnel matches 9 run setblock 2857 33 2777 minecraft:cracked_stone_bricks
execute if score Masks Tunnel > MasksOld Tunnel run playsound minecraft:block.stone.break voice @a 2858 34 2777

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:mancave/wallcracks' as: "},{"selector":"@s"}]
