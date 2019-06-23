--Create the functions to retrieve which sound to play, and play it
local sounds = {
	play = function(self, soundFile)
		if not soundFile == nil then
			PlaySoundFile(soundFile);
		end
	end,
	getFromDictionary = function(self, messageType)
		return ChatNotificationsSavedDictionary[messageType];
	end,
	playFromDictionary = function(self, messageType)
		if not messageType == nil then
			PlaySoundFile(ChatNotificationsSavedDictionary[messageType]);
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

