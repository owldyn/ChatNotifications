--Initialize Sound Dictionary
local soundDictionary = {
	["CHAT_MSG_PARTY"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",					--Party Members
	["CHAT_MSG_PARTY_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",				--Party Leader
	["CHAT_MSG_OFFICER"] = "Interface\\AddOns\\IHearEverybody\\guild.ogg",					--Guild Officer
	["CHAT_MSG_GUILD"] = "Interface\\AddOns\\IHearEverybody\\guild.ogg",					--Guild Chat
	["CHAT_MSG_WHISPER"] = "Interface\\AddOns\\IHearEverybody\\whisper.ogg",				--In Game Whispers
	["CHAT_MSG_BN_WHISPER"] = "Interface\\AddOns\\IHearEverybody\\whisper.ogg",				--Battle.net Whispers
	["CHAT_MSG_RAID"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",						--Raid Members
	["CHAT_MSG_RAID_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",				--Raid Leader
	["CHAT_MSG_INSTANCE_CHAT"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",			--Instance Chat
	["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",		--Instance Leader
	["CHAT_MSG_COMMUNITIES_CHANNEL"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",		--Communities
}

--Create the functions to retrieve which sound to play, and play it
local sounds = {
	play = function(self, soundFile)
		if not soundFile == nil then
			PlaySoundFile(soundFile);
		end
	end,
	getFromDictionary = function(self, messageType)
		return soundDictionary[messageType];
	end,
	playFromDictionary = function(self, messageType)
		if not messageType == nil then
			PlaySoundFile(soundDictionary[messageType]);
		end
	end,
}
--Function to set the sounds from settings
local function setSounds()
	--FIXME set this up
end
--Function to save the settings to SavedVariables
local function saveSettings()
	--FIXME set this up
end

local messageHandler = CreateFrame("Frame")
messageHandler:RegisterEvent("CHAT_MSG_RAID_LEADER")
messageHandler:RegisterEvent("CHAT_MSG_RAID")
messageHandler:RegisterEvent("CHAT_MSG_PARTY")
messageHandler:RegisterEvent("CHAT_MSG_WHISPER")
messageHandler:RegisterEvent("CHAT_MSG_OFFICER")
messageHandler:RegisterEvent("CHAT_MSG_GUILD")
messageHandler:RegisterEvent("CHAT_MSG_PARTY_LEADER")
messageHandler:RegisterEvent("CHAT_MSG_BN_WHISPER")
messageHandler:RegisterEvent("CHAT_MSG_INSTANCE_CHAT")
messageHandler:RegisterEvent("CHAT_MSG_INSTANCE_CHAT_LEADER")
messageHandler:RegisterEvent("CHAT_MSG_COMMUNITIES_CHANNEL")
messageHandler:RegisterEvent("CHAT_MSG_SAY")
messageHandler:RegisterEvent("CHAT_MSG_SYSTEM")
messageHandler:RegisterEvent("CHAT_MSG_YELL")
messageHandler:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN")
messageHandler:SetScript("OnEvent", sounds.playFromDictionary)




setSounds();

