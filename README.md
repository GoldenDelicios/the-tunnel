# the-tunnel
Slabserver's puzzle for Season 3

## How to use:
* Download the datapack from the releases page.
* Drop the datapack into your world's datapacks folder (`.minecraft/saves/<world>/datapacks/` for singleplayer).  
* Type `/reload` or restart your world to enable the datapack.
* This datapack should ***not*** be used in survival worlds where structures have been built in the End. Verify that the location at which the Tunnel is generated is suitable for your world, or play it in a new, fresh world.

## How to play:
* Download and enable the datapack in a new world.
* Intermissions exist between stages. This was done to prevent the puzzle from being completed in one day.
* The datapack does not automatically skip intermissions, that must be done externally.
  * To skip an intermission once, run `/function tunnel:intermission/advance`. This function will do nothing if an intermission is not underway.
  * To disable intermissions before playing, run `/scoreboard players set Unlocked Tunnel 3`. This will not necessarily skip intermissions that are already underway.

## How to speedrun:
* Download and enable the datapack in a new world.
* Disable intermissions by running `/scoreboard players set Unlocked Tunnel 3`. You only need to do this once.
* Reset advancements and restart the Tunnel in between runs.  
`/advancement revoke @s from tunnel:core/thetunnel` and `/function tunnel:restart`

## Speedrun rules:
- Tunnel speedrun must begin and end at the obsidian platform.
- Tunnel must be started from the first level 110 (`/function tunnel:restart`).
- Speedrun ends when the final advancement is granted (or equivalent).
- You may not use any client-side mods to your advantage. Client-side mods are allowed, but your run must be possible in a vanilla client and not facilitated by any mods or macros.
- You may not bring items into the tunnel other than those normally allowed (written books, chorus fruit, spruce doors, or empty bowls).
- No using cheats during your run (obviously).
- You may use any glitches within Minecraft to your advantage.
- You may make preparations before you start (e.g. obtaining a book, building around the obsidian platform, etc).

## Common functions:
* Reset the Tunnel (resets all progress and settings) - `/function tunnel:reset`
* Restart the Tunnel (resets to the first level, remembers progress and settings) - `/function tunnel:restart`
* Set Tunnel to the final level - `/function tunnel:complete`
* Reset advancements - `/advancement revoke @s from tunnel:core/thetunnel`
* Allow non-ops to restart the tunnel - `/scoreboard players set EnableRestarts Tunnel 1`

- Disable intermissions manually - `/scoreboard players set Unlocked Tunnel 3`
- End intermission (if intermission has been reached) - `/function tunnel:intermission/advance`
  - The datapack never calls this function; it needs to be run externally to end intermissions. On Slabserver, this was automatically run every day at 4pm ET.
