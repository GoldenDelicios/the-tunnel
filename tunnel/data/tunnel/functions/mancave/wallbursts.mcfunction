#Burst the wall

fill 2857 33 2776 2857 35 2778 minecraft:air
particle minecraft:poof 2858 34 2777 1 1 1 0.25 100
execute if score Masks Tunnel > MasksOld Tunnel run playsound minecraft:entity.wither.break_block voice @a 2858 34 2777

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:mancave/wallbursts' as: "},{"selector":"@s"}]
