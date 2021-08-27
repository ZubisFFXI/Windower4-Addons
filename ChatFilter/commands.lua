--Copyright © 2021, Zubis
--All rights reserved.

--Redistribution and use in source and binary forms, with or without
--modification, are permitted provided that the following conditions are met:

--	  * Redistributions of source code must retain the above copyright
--		notice, this list of conditions and the following disclaimer.
--	  * Redistributions in binary form must reproduce the above copyright
--		notice, this list of conditions and the following disclaimer in the
--		documentation and/or other materials provided with the distribution.
--	  * Neither the name of ChatFilter nor the
--		names of its contributors may be used to endorse or promote products
--		derived from this software without specific prior written permission.

--THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--DISCLAIMED. IN NO EVENT SHALL <your name> BE LIABLE FOR ANY
--DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
--ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

require('logger')
require('texts')
require('tables')
local settings = require('settings')

commands = {}

commands.actions = {
	add='add',
	block='block',
	help='help',
	list='list',
	remove='remove',
}
commands.filter_types = {
	p='p',
	w='w'
}

--Display a help section
function commands.help()
	log("%s v.%s":format(_addon.name, _addon.version))	
	log('Usage: //cf (add | remove) (p | w) player_or_word')	
	log('List Filters: //cf list')		
	log('Block On/Off: //cf block')	
	log('Block Off will highlight chat messages that match filters instead of blocking them.')
	log('====================')	
	log('Example 1 - Add Player: //cf add p Bob')
	log('Example 2 - Add Word: //cf add w "Lady Lilith"')	
end

--Display error based on invalid selection
function commands.invalid_option(option)
	warning('\'%s\' is not a valid option. See //cf help': format(option))
end

--Block Mode
function commands.block()
	settings.block = not settings.block
	if settings.block then
		notice("Block ON: Blocked messages will be blocked and not visible.")	
	else
		notice("Block OFF: Blocked messages will be highlighted, but not blocked.")		
	end
	settings:save('all')
end

--Display the list of players and words
function commands.list()
	log("Blocked Players":color(250))
	for i, player in pairs(settings.filters.players) do	
	  log(' \'' .. player .. '\'')
	end
	
	log("Blocked Words":color(250))
	for i, word in pairs(settings.filters.words) do	
	  log(' \'' .. word .. '\'')
	end	
end

--Add a player to the list
function commands.add_player(player)
	local cleaned_key = windower.convert_auto_trans(player):lower():gsub('%W','')
	local cleaned_value = windower.convert_auto_trans(player):lower()
	
	if settings.filters.players[cleaned_key] == nil then
		settings.filters.players[cleaned_key] = cleaned_value
		settings:save('all')
	end

	notice("The player '%s' is blocked.":format(cleaned_value):color(50))
end

--Remove a player from the list
function commands.remove_player(player)
	local cleaned_key = windower.convert_auto_trans(player):lower():gsub('%W','')
	local cleaned_value = windower.convert_auto_trans(player):lower()
	
	settings.filters.players[cleaned_key] = nil
	settings:save('all')

	notice("The player '%s' is unblocked.":format(cleaned_value):color(50))	
end

--Add a word to the list
function commands.add_word(word)
	local cleaned_key = windower.convert_auto_trans(word):lower():gsub('%W','')
	local cleaned_value = windower.convert_auto_trans(word):lower()
	
	if settings.filters.words[cleaned_key] == nil then
		settings.filters.words[cleaned_key] = cleaned_value
		settings:save('all')
	end

	notice("The word '%s' is blocked.":format(cleaned_value):color(50))
end

--Remove a word from the list
function commands.remove_word(word)
	local cleaned_key = windower.convert_auto_trans(word):lower():gsub('%W','')
	local cleaned_value = windower.convert_auto_trans(word):lower()
		
	settings.filters.words[cleaned_key] = nil
	settings:save('all')

	notice("The word '%s' is unblocked.":format(cleaned_value):color(50))	
end

return commands