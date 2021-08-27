# ChatFilter
ChatFilter Add-On for FFXI Windower

Based on Chiala's script at: https://www.ffxiah.com/forum/topic/53964/block-those-stars

## Installation
1. Take the most recent artifact zip folder from releases.
https://github.com/ZubisFFXI/Windower4-Addons/releases
2. Unzip and place in the Windower\addons folder.
![alt text](https://user-images.githubusercontent.com/89662000/131179775-4f65360b-6ee9-4589-aa1a-eda905aa5be9.png "Install Folder")
3. Run "//lua l chatfilter" in game to load the addon.

## Configuration

### //cf help
Will show a help menu.

### //cf list
Will list currently blocked players or words.

### //cf block
Will toggle hiding blocked messages or just highlighting what will be blocked.

### //cf add p player_to_block
Add a player to the blocklist.

### //cf remove player_to_unblock
Remove a player from the blocklist.

### //cf add w word_to_block
Add a word to the blocklist.
Note you can add multiple words as part of a phase, but you must surround them with quotes.
Example: //cf add w "Lady Lilith"

### //cf remove w word_to_unblock
Remove a word from the blocklist.

## Advanced

### Special Characters
By default only two special characters are blocked, ★ and ☆.
If you wish to add more, you may add them in the default_filters.lua file.
Please suggest what you're adding instead on GitHub or FFXIAH, as it could be valuable to other players.

### Skill Up Books/Other
Similar to the above, Skill Up Books are blocked. This can be also edited in the default_filters.lua file.