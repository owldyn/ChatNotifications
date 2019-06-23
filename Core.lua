local soundDescriptions = {
	--Descriptions attained and (usually) paraphrased from https://wow.gamepedia.com/Category:API_events/C_ChatInfo as of 6/20/2019.
	--Message types not implemented are not implemented either because I see no reason for them, or because it's unclear/unknown what exactly they are for.
	["CHAT_MSG_ACHIEVEMENT"] = "When a player in your vicinity completes an achievement.",
	["CHAT_MSG_ADDON"] = "When an addon sends a message not visible to the player that is NOT logged on Blizzard's servers (such as the feature in DBM that will check if other players are running the addon).",
	["CHAT_MSG_ADDON_LOGGED"] = "When an addon sends a message not visible to the player that IS logged on Blizzard's servers (such as an RP addon sharing your characters bio)",
	["CHAT_MSG_AFK"] = "When you receive an AFK auto response",
	["CHAT_MSG_BG_SYSTEM_ALLIANCE"] = "When an alliance action is sent to chat in BGs, e.g. assaulting a graveyard or capture point, or picking up a flag.",
	["CHAT_MSG_BG_SYSTEM_HORDE"] = "When a horde action is sent to chat in BGs, e.g. assaulting a graveyard or capture point, or picking up a flag.",
	["CHAT_MSG_BG_SYSTEM_NEUTRAL"] = "When a Battleground-event message that are displayed in a faction-neutral color by default is sent",
	["CHAT_MSG_BN"] = "",										--Not currently implemented in this addon
	["CHAT_MSG_BN_INLINE_TOAST_ALERT"] = "",					--Not currently implemented in this addon
	["CHAT_MSG_BN_INLINE_TOAST_BROADCAST"] = "",				--Not currently implemented in this addon
	["CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM"] = "",			--Not currently implemented in this addon
	["CHAT_MSG_BN_INLINE_TOAST_CONVERSATION"] = "",				--Not currently implemented in this addon
	["CHAT_MSG_BN_WHISPER"] = "",
	["CHAT_MSG_BN_WHISPER_INFORM"] = "",
	["CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE"] = "",
	["CHAT_MSG_CHANNEL"] = "When a channel message is sent",
	["CHAT_MSG_CHANNEL_JOIN"] = "When somebody joins a channel you are in.",
	["CHAT_MSG_CHANNEL_LEAVE"] = "When somebody leaves a channel you are in.",
	["CHAT_MSG_CHANNEL_LIST"] = "",								--Not currently implemented in this addon
	["CHAT_MSG_CHANNEL_NOTICE"] = "When you enter or leave a chat channel, or a channel was recently throttled.",
	["CHAT_MSG_CHANNEL_NOTICE_USER"] = "When something changes in the channel, such as a user being kicked or moderation being enabled",
	["CHAT_MSG_COMBAT_FACTION_CHANGE"] = "When you gain or lose reputation with a faction.",
	["CHAT_MSG_COMBAT_HONOR_GAIN"] = "When you gain honor, whether from an honorable kill or bonus honor earned.",
	["CHAT_MSG_COMBAT_MISC_INFO"] = "When your equipment takes durability loss that is announced in chat.",
	["CHAT_MSG_COMBAT_XP_GAIN"] = "When you gain XP from a creature or a quest. (does not activate if you kill a creature and do not get XP from it)",
	["CHAT_MSG_COMMUNITIES_CHANNEL"] = "When you receive a message in a Community. (needs verification)", --TODO needs verification
	["CHAT_MSG_CURRENCY"] = "When you gain currency other than money, e.g. Garrison/Order Hall/War resources",
	["CHAT_MSG_DND"] = "When you receive a Do Not Disturb auto-reply",
	["CHAT_MSG_EMOTE"] = "When you send or receive a custom emote, such as with /e or /emote.",
	["CHAT_MSG_FILTERED"] = "",									--Not currently implemented in this addon
	["CHAT_MSG_GUILD"] = "When a message is sent or received in Guild chat.",
	["CHAT_MSG_GUILD_ACHIEVEMENT"] = "When a guild member completes an achievement",
	["CHAT_MSG_GUILD_ITEM_LOOTED"] = "When a guild member loots an epic or higher quality piece of gear (needs verification)", --TODO needs verification
	["CHAT_MSG_IGNORED"] = "When you whisper a player that is ignoring you",
	["CHAT_MSG_INSTANCE_CHAT"] = "When you receive a message in instance chat, such as when you're in a matchmade dungeon or raid.",
	["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "When you receive a message in instance chat from the instance leader, such as when you're in a matchmade dungeon or raid.",
	["CHAT_MSG_LOOT"] = "When loot text is sent to your chat, such as when somebody receives an item, rolls for an item, or creates an item.",
	["CHAT_MSG_MONEY"] = "When you loot gold/silver/copper.",
	["CHAT_MSG_MONSTER_EMOTE"] = "When an NPC emotes.",
	["CHAT_MSG_MONSTER_PARTY"] = "When an NPC sends you a message in party chat",
	["CHAT_MSG_MONSTER_SAY"] = "When an NPC says something.",
	["CHAT_MSG_MONSTER_WHISPER"] = "When an NPC whispers you",
	["CHAT_MSG_MONSTER_YELL"] = "When an NPC /yells.",
	["CHAT_MSG_OFFICER"] = "When a message is sent or received in the Guild Officer channel",
	["CHAT_MSG_OPENING"] = "",									--Not currently implemented in this addon
	["CHAT_MSG_PARTY"] = "When a message is sent or received in party chat.",
	["CHAT_MSG_PARTY_LEADER"] = "When a message is sent or received in party chat by the party leader.",
	["CHAT_MSG_PET_BATTLE_COMBAT_LOG"] = "",					--Not currently implemented in this addon
	["CHAT_MSG_PET_BATTLE_INFO"] = "",							--Not currently implemented in this addon
	["CHAT_MSG_PET_INFO"] = "",									--Not currently implemented in this addon
	["CHAT_MSG_RAID"] = "When a message is sent or received in raid chat.",
	["CHAT_MSG_RAID_BOSS_EMOTE"] = "When a raid boss emotes.",
	["CHAT_MSG_RAID_BOSS_WHISPER"] = "When a raid boss whispers you.",
	["CHAT_MSG_RAID_LEADER"] = "When a message is sent or received from the raid leader.",
	["CHAT_MSG_RAID_WARNING"] = "When a warning message is sent or received by the raid leader.",
	["CHAT_MSG_RESTRICTED"] = "",								--Not currently implemented in this addon
	["CHAT_MSG_SAY"] = "When a message is sent or received in the Say channel.",
	["CHAT_MSG_SKILL"] = "When some chat messages about skills are displayed (such as leveling up in the skill)",
	["CHAT_MSG_SYSTEM"] = "When a system chat message is received, generally this is the yellow text in chat.",
	["CHAT_MSG_TARGETICONS"] = "When a raid target icon is set.",
	["CHAT_MSG_TEXT_EMOTE"] = "When built in emotes are sent or received, such as /dance",
	["CHAT_MSG_TRADESKILLS"] = "",								--Not currently implemented in this addon
	["CHAT_MSG_WHISPER"] = "When a whisper is received from another player.",
	["CHAT_MSG_WHISPER_INFORM"] = "When a whisper is sent to another player",
	["CHAT_MSG_YELL"] = "When a message is sent or received in /yell.",
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
}

--Create the functions to retrieve which sound to play, and play it
local sounds = {
	play = function(self, soundFile)
		PlaySoundFile(soundFile);
	end,
	getFromDictionary = function(self, messageType)
		return soundDictionary[messageType];
	end,
	playFromDictionary = function(self, messageType)
		PlaySoundFile(soundDictionary[messageType]);
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



--Create config UI.
local configUI = {}
configUI.panel = CreateFrame("Frame","CN_ConfigUI", UIParent);
configUI.panel.name = "Chat Notifications";
InterfaceOptions_AddCategory(configUI.panel);

--Add Buttons

--Save Button
configUI.panel.saveButton = CreateFrame("Button", nil, configUI.panel, "GameMenuButtonTemplate");
configUI.panel.saveButton:SetPoint("CENTER", configUI.panel, "TOPRIGHT", -70, -20);
configUI.panel.saveButton:SetSize(140,40);
configUI.panel.saveButton:SetText("Save");
configUI.panel.saveButton:SetNormalFontObject("GameFontNormalLarge");
configUI.panel.saveButton:SetHighlightFontObject("GameFontHighlightLarge");


setSounds();

