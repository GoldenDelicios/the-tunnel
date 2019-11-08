playsound minecraft:block.anvil.land voice @a 2851 36 2774 1 0
playsound minecraft:ambient.underwater.enter voice @a 2851 36 2774 1 0.75
playsound minecraft:block.water.ambient voice @a 2851 36 2774

execute in the_end run function tunnel:stage2/level5.1

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage2/grillbreaks1' as: "},{"selector":"@s"}]
