# ChatFilter
ChatFilter Add-On for FFXI Windower

Based on Chiala's script at: https://www.ffxiah.com/forum/topic/53964/block-those-stars

## Installation
1. Take the most recent artifact zip folder from releases.
https://github.com/ZubisFFXI/Windower4-Addons/releases
2. Unzip and place in the Windower\addons folder.
![alt text](https://user-images.githubusercontent.com/89662000/131179775-4f65360b-6ee9-4589-aa1a-eda905aa5be9.png "Install Folder")
3. Run "//lua l chatfilter" in game to load the addon.
4. Edit the Windower settings.xml file so ChatFilter will run at startup.
![alt text](https://user-images.githubusercontent.com/89662000/131180770-abbd454a-086d-4d40-9438-a9b008ce2827.png "Settings.xml")

## Configuration

### //cf help
Will show a help menu.

![alt text](https://user-images.githubusercontent.com/89662000/131181083-3ea53450-6e33-4468-abf4-0b4d77388ad6.png "//cf help")

### //cf list
Will list currently blocked players or words.

![alt text](https://user-images.githubusercontent.com/89662000/131181395-b0697e71-8722-42f4-8ccb-c09076836471.png "//cf list")

### //cf block
Will toggle hiding blocked messages or just highlighting what will be blocked.

![alt text](https://user-images.githubusercontent.com/89662000/131182598-ba30662a-ae9e-4720-b1af-e97635224490.png "//cf block")

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
Please suggest what you're adding instead on GitHub or FFXIAH, as it could be valuable to other players and could be made a default.

### Skill Up Books/Other
Similar to the above, Skill Up Books are blocked. This can be also edited in the default_filters.lua file.