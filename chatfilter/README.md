# ChatFilter
ChatFilter Add-On for FFXI Windower

Based on Chiala's script at: https://www.ffxiah.com/forum/topic/53964/block-those-stars

## Installation
1. Download the most recent release.
https://github.com/ZubisFFXI/Windower4-Addons/releases
2. Unzip and place the chatfilter folder in the Windower\addons folder.
3. Run "//lua l chatfilter" in game to load the addon, or use the plugin_manager addon to load it automatically at startup.

## Configuration

### //cf help
Will show a help menu.

![alt text](https://user-images.githubusercontent.com/89662000/131205048-4fd91634-16f1-4c1f-9783-e013d3425fa2.png "//cf help")

### //cf list
Will list currently blocked players or strings.

![alt text](https://user-images.githubusercontent.com/89662000/131205285-961be53a-6d1e-452f-aa2e-672775be68b1.png "//cf list")

### //cf block
Will toggle hiding blocked messages or just highlighting what will be blocked.

![alt text](https://user-images.githubusercontent.com/89662000/131205327-4aa7cbb0-9216-4567-8995-3eaba611558c.png "//cf block")

### //cf add p player_to_block
Add a player to the blocklist.

### //cf remove player_to_unblock
Remove a player from the blocklist.

### //cf add s string_to_block
Add a string to the blocklist. Note you can add multiple words as part of a string, but you must surround it with quotes.
Example: //cf add s "Lady Lilith"

### //cf remove s string_to_block
Remove a string from the blocklist.

## Advanced

### Special Characters
By default only two special characters are blocked, ★ and ☆.
If you wish to add more, you may add them in the default_filters.lua file.
Please suggest what you're adding instead on GitHub or FFXIAH, as it could be valuable to other players and could be made a default.

### Skill Up Books/Other
Similar to the above, Skill Up Books are blocked. This can be also edited in the default_filters.lua file.

### Specific Strings
Adding a generic "Job Points" string will block any reference to Job Points, including anyone who /tells you a question about Job Points.
Be more specific, ie "Dho Gates Job Points"

### Use the //cf block command to check for mistakes
Just in case you blocked a single vowel and the zone gets really quiet...

![alt text](https://user-images.githubusercontent.com/89662000/131205422-53454c69-d6c5-4552-9335-975db2e71e78.png "Blocked vowel")