execute in the_end run setblock 2853 41 2773 minecraft:air
playsound minecraft:block.stone.break voice @a 2853 41 2773
playsound minecraft:block.stone.break voice @a 2853 41 2773
playsound minecraft:block.water.ambient voice @a 2853 41 2773
playsound minecraft:block.water.ambient voice @a 2853 41 2773
playsound minecraft:block.water.ambient voice @a 2853 41 2773
scoreboard players set NextLevel Tunnel 141

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage1/water' as: "},{"selector":"@s"}]
