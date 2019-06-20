local soundDescriptions = {
	-- Descriptions attained and (usually) paraphrased from https://wow.gamepedia.com/Category:API_events/C_ChatInfo as of 6/20/2019.
	["CHAT_MSG_ACHIEVEMENT"] = "When a player in your vicinity completes an achievement.",
	["CHAT_MSG_ADDON"] = "When an addon sends a message not visible to the player that is NOT logged on Blizzard's servers (such as the feature in DBM that will check if other players are running the addon).",
	["CHAT_MSG_ADDON_LOGGED"] = "When an addon sends a message not visible to the player that IS logged on Blizzard's servers (such as an RP addon sharing your characters bio)",
	["CHAT_MSG_AFK"] = "When you receive an AFK auto response",
	["CHAT_MSG_BG_SYSTEM_ALLIANCE"] = "When an alliance action is sent to chat in BGs, e.g. assaulting a graveyard or capture point, or picking up a flag.",
	["CHAT_MSG_BG_SYSTEM_HORDE"] = "When a horde action is sent to chat in BGs, e.g. assaulting a graveyard or capture point, or picking up a flag.",
	["CHAT_MSG_BG_SYSTEM_NEUTRAL"] = "When a Battleground-event message that are displayed in a faction-neutral color by default is sent",
	["CHAT_MSG_BN"] = "",										--Not currently implemented
	["CHAT_MSG_BN_INLINE_TOAST_ALERT"] = "",					--Not currently implemented
	["CHAT_MSG_BN_INLINE_TOAST_BROADCAST"] = "",				--Not currently implemented
	["CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM"] = "",			--Not currently implemented
	["CHAT_MSG_BN_INLINE_TOAST_CONVERSATION"] = "",				--Not currently implemented
	["CHAT_MSG_BN_WHISPER"] = "",
	["CHAT_MSG_BN_WHISPER_INFORM"] = "",
	["CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE"] = "",
	["CHAT_MSG_CHANNEL"] = "When a channel message is sent",
	["CHAT_MSG_CHANNEL_JOIN"] = "When somebody joins a channel you are in.",
	["CHAT_MSG_CHANNEL_LEAVE"] = "When somebody leaves a channel you are in.",
	["CHAT_MSG_CHANNEL_LIST"] = "",								--Not currently implemented
	["CHAT_MSG_CHANNEL_NOTICE"] = "When you enter or leave a chat channel, or a channel was recently throttled.",
	["CHAT_MSG_CHANNEL_NOTICE_USER"] = "When something changes in the channel, such as a user being kicked or moderation being enabled",
	["CHAT_MSG_COMBAT_FACTION_CHANGE"] = "When you gain or lose reputation with a faction.",
	["CHAT_MSG_COMBAT_HONOR_GAIN"] = "When you gain honor, whether from an honorable kill or bonus honor earned.",
	["CHAT_MSG_COMBAT_MISC_INFO"] = "When your equipment takes durability loss that is announced in chat.",
	["CHAT_MSG_COMBAT_XP_GAIN"] = "When you gain XP from a creature or a quest. (does not activate if you kill a creature and do not get XP from it)",
	["CHAT_MSG_COMMUNITIES_CHANNEL"] = "When you receive a message in a Community. (needs verification)", --TODO needs verification
	["CHAT_MSG_CURRENCY"] = "",
	["CHAT_MSG_DND"] = "",
	["CHAT_MSG_EMOTE"] = "",
	["CHAT_MSG_FILTERED"] = "",
	["CHAT_MSG_GUILD"] = "",
	["CHAT_MSG_GUILD_ACHIEVEMENT"] = "",
	["CHAT_MSG_GUILD_ITEM_LOOTED"] = "",
	["CHAT_MSG_IGNORED"] = "",
	["CHAT_MSG_INSTANCE_CHAT"] = "",
	["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "",
	["CHAT_MSG_LOOT"] = "",
	["CHAT_MSG_MONEY"] = "",
	["CHAT_MSG_MONSTER_EMOTE"] = "",
	["CHAT_MSG_MONSTER_PARTY"] = "",
	["CHAT_MSG_MONSTER_SAY"] = "",
	["CHAT_MSG_MONSTER_WHISPER"] = "",
	["CHAT_MSG_MONSTER_YELL"] = "",
	["CHAT_MSG_OFFICER"] = "",
	["CHAT_MSG_OPENING"] = "",
	["CHAT_MSG_PARTY"] = "",
	["CHAT_MSG_PARTY_LEADER"] = "",
	["CHAT_MSG_PET_BATTLE_COMBAT_LOG"] = "",
	["CHAT_MSG_PET_BATTLE_INFO"] = "",
	["CHAT_MSG_PET_INFO"] = "",
	["CHAT_MSG_RAID"] = "",
	["CHAT_MSG_RAID_BOSS_EMOTE"] = "",
	["CHAT_MSG_RAID_BOSS_WHISPER"] = "",
	["CHAT_MSG_RAID_LEADER"] = "",
	["CHAT_MSG_RAID_WARNING"] = "",
	["CHAT_MSG_RESTRICTED"] = "",
	["CHAT_MSG_SAY"] = "",
	["CHAT_MSG_SKILL"] = "",
	["CHAT_MSG_SYSTEM"] = "",
	["CHAT_MSG_TARGETICONS"] = "",
	["CHAT_MSG_TEXT_EMOTE"] = "",
	["CHAT_MSG_TRADESKILLS"] = "",
	["CHAT_MSG_WHISPER"] = "When a whisper is received from another player.",
	["CHAT_MSG_WHISPER_INFORM"] = "",
	["CHAT_MSG_YELL"] = "",
}
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
	--FIXME remove these from default later
	["CHAT_MSG_SAY"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",
	["CHAT_MSG_YELL"] = "Interface\\AddOns\\IHearEverybody\\party.ogg",
}

--Create the functions to retrieve which sound to play, and play it
local sounds = {
	play = function(soundFile)
		PlaySoundFile(soundFile);
	end,
	getFromDictionary = function(messageType)
		return soundDictionary[messageType];
	end,
}

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
messageHandler:RegisterEvent("CHAT_MSG_YELL")
messageHandler:SetScript("OnEvent", sounds.play(sounds.getFromDictionary(event)))

--Create config UI, initialize it, and set default opening point, then hide it.
local configUI = CreateFrame("Frame","CN_ConfigUI", UIParent,"BasicFrameTemplateWithInset, MovableTemplate")
configUI:SetSize(500,800);
configUI:SetPoint("CENTER",UIParent,"CENTER")
configUI:Hide();
configUI.title = configUI:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
configUI.title:SetPoint("LEFT", configUI.TitleBg, "LEFT",5,0);
configUI.title:SetText("ChatNotifications Config UI");
local function setSounds()

end
setSounds();

--FIXME Remove these tests once testing is complete
sounds.play(sounds.getFromDictionary("CHAT_MSG_SAY")) --Should play sound as soon as the addon loads.

