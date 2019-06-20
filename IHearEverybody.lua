local soundDictionary = {
	["CHAT_MSG_PARTY"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,					--Party Members
	["CHAT_MSG_PARTY_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,				--Party Leader
	["CHAT_MSG_OFFICER"] = "Interface\\AddOns\\IHearEverybody\\guild.ogg", MASTER,					--Guild Officer
	["CHAT_MSG_GUILD"] = "Interface\\AddOns\\IHearEverybody\\guild.ogg", MASTER,					--Guild Chat
	["CHAT_MSG_WHISPER"] = "Interface\\AddOns\\IHearEverybody\\whisper.ogg", MASTER,				--In Game Whispers
	["CHAT_MSG_BN_WHISPER"] = "Interface\\AddOns\\IHearEverybody\\whisper.ogg", MASTER,				--Battlenet Whispers
    ["CHAT_MSG_RAID"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,						--Raid Members
	["CHAT_MSG_RAID_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,				--Raid Leader
    ["CHAT_MSG_INSTANCE_CHAT"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,			--Instance Chat
	["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,		--Instance Leader
	["CHAT_MSG_COMMUNITIES_CHANNEL"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,		--Communities
	--FIXME remove these from default later
	["CHAT_MSG_SAY"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,
	["CHAT_MSG_YELL"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", MASTER,
}
local playSound = CreateFrame("Frame")

local function setSounds()
	playSound:RegisterEvent("CHAT_MSG_RAID_LEADER")
	playSound:RegisterEvent("CHAT_MSG_RAID")
	playSound:RegisterEvent("CHAT_MSG_PARTY")
	playSound:RegisterEvent("CHAT_MSG_WHISPER")
	playSound:RegisterEvent("CHAT_MSG_OFFICER")
	playSound:RegisterEvent("CHAT_MSG_GUILD")
	playSound:RegisterEvent("CHAT_MSG_PARTY_LEADER")
	playSound:RegisterEvent("CHAT_MSG_BN_WHISPER")
	playSound:RegisterEvent("CHAT_MSG_INSTANCE_CHAT")
	playSound:RegisterEvent("CHAT_MSG_INSTANCE_CHAT_LEADER")
	playSound:RegisterEvent("CHAT_MSG_COMMUNITIES_CHANNEL")
	playSound:RegisterEvent("CHAT_MSG_SAY")
	playSound:RegisterEvent("CHAT_MSG_YELL")
	playSound:SetScript("OnEvent", function(event)
		PlaySoundFile(soundDictionary[event])
	end)
end
setSounds();
PlaySoundFile("Interface\\AddOns\\IHearEverybody\\party.ogg");


