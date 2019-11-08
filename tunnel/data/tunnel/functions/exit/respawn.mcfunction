#Effects, gamemode
gamemode survival @s
effect clear @s
effect give @s minecraft:instant_health 20 0 true
effect give @s minecraft:saturation 100 0 true
effect give @s minecraft:resistance 5 5 true
stopsound @s * minecraft:music.dragon

#Obsidian platform
execute in the_end run fill 98 48 -2 102 48 2 minecraft:obsidian
execute in the_end run tp @s 100.0 49.0 0.0

#Original respawn-to-bed section used in rounds 1 and 2 is commented out,
#left included for those curious about how it worked.

#Default (no respawn point)
#execute in overworld run tp @s[nbt=!{SpawnForced:0b}] 272 80 -80

#Bed
#execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1, Tags:["VarTp"]}
#execute store result entity @e[tag=VarTp,limit=1] Pos[0] double 1 run data get entity @s SpawnX
#execute store result entity @e[tag=VarTp,limit=1] Pos[1] double 1 run data get entity @s SpawnY
#execute store result entity @e[tag=VarTp,limit=1] Pos[2] double 1 run data get entity @s SpawnZ
#execute at @s[nbt={SpawnForced:0b}] run tp @s @e[tag=VarTp,limit=1]
#execute at @s[nbt={SpawnForced:0b}] in overworld run tp @s ~0.5 ~0.5625 ~0.5
#kill @e[tag=VarTp]

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:exit/respawn' as: "},{"selector":"@s"}]