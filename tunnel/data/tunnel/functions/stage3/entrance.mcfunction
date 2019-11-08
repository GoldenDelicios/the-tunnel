#On player entrance

#Alternative entrance location
execute if score CurrentLevel Tunnel matches 360 run tp @s 2859 26 2767 0 0

#Run code check earlier
execute if score CurrentLevel Tunnel matches 360 if entity @a[scores={TunnelOccupant=1..},nbt={Inventory:[{tag:{pages: ['{"text":"Li4uaGFkIHdvcmxkcyBnZXQgbWVzc2VkIHVwIGZyb20gcGF0Y2hlcyBvciBnZXQgY2h1bmsgZXJyb3JzLi4uIG5ldmVyIGNvbXBsZXRlbHkgZmFpbCBiZWZvcmUuLi4gc3R1Y2sgaW4gYW4gaW5maW5pdGUgbG9vcC4uLg=="}']}}]}] run schedule function tunnel:stage3/codecheck 20

#Verbosity
tellraw @a[tag=TunnelVerbose] [{"text":"","italic":"true","color":"gray"},{"text":"Executed 'tunnel:stage3/entrance' as: "},{"selector":"@s"}]
