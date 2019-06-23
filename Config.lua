--Create the description dictionary
local CN_soundDescriptions = {
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
    ["CHAT_MSG_BN_WHISPER"] = "When you receive a battle.net whisper",
    ["CHAT_MSG_BN_WHISPER_INFORM"] = "When you send a battle.net whisper",
    ["CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE"] = "When you receive an autoresponse for the battle.net whisper target being offline",
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
--Functions to play sounds
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
--Create config UI within Blizzard's addon config panel.
local configUI = {}
configUI.panel = CreateFrame("Frame","CN_ConfigUI", UIParent);
configUI.eventHandler = CreateFrame("Frame","CN_ConfigUI_EventHandler", UIParent);
configUI.eventHandler:RegisterEvent("ADDON_LOADED"); -- Fired when saved variables are loaded
configUI.eventHandler:RegisterEvent("PLAYER_LOGOUT"); -- Fired when about to log out
configUI.panel.name = "Chat Notifications";
InterfaceOptions_AddCategory(configUI.panel);
--Setup chat command to open configUI
SLASH_CHATNOTIFICATIONSCONFIG1 = "/chatnc";
function SlashCmdList.CHATNOTIFICATIONSCONFIG(msg)
    InterfaceOptionsFrame_OpenToCategory("Chat Notifications")
    InterfaceOptionsFrame_OpenToCategory("Chat Notifications")
end

--Set up functions to load from SavedVariables
local function setSettingDropdownText(selected)
    if not (ChatNotificationsSavedDictionary[selected] == nil) then
        return ChatNotificationsSavedDictionary[selected];
    else
        return "Disabled";
    end
end
function configUI.eventHandler:OnEvent(event, addon)
    if ((event == "ADDON_LOADED") and (addon == "ChatNotifications")) then
        configUI.eventHandler.events.addonLoad();
    elseif (event == "PLAYER_LOGOUT") then
        configUI.eventHandler.events.playerLogout();
    end
end
configUI.eventHandler.events = {
    addonLoad = function()
        if (ChatNotificationsSavedDictionary == nil) then --If this is the first time this addon has been loaded then set the default settings.
            print("Chat Notifications: I see this is the first time you\'ve ran this addon. Loading default settings.");
            ChatNotificationsSavedDictionary = {
                ["CHAT_MSG_PARTY"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", --Party Members
                ["CHAT_MSG_PARTY_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", --Party Leader
                ["CHAT_MSG_OFFICER"] = "Interface\\AddOns\\IHearEverybody\\guild.ogg", --Guild Officer
                ["CHAT_MSG_GUILD"] = "Interface\\AddOns\\IHearEverybody\\guild.ogg", --Guild Chat
                ["CHAT_MSG_WHISPER"] = "Interface\\AddOns\\IHearEverybody\\whisper.ogg", --In Game Whispers
                ["CHAT_MSG_BN_WHISPER"] = "Interface\\AddOns\\IHearEverybody\\whisper.ogg", --Battle.net Whispers
                ["CHAT_MSG_RAID"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", --Raid Members
                ["CHAT_MSG_RAID_LEADER"] = "Interface\\AddOns\\IHearEverybody\\woopwoop.ogg", --Raid Leader
                ["CHAT_MSG_INSTANCE_CHAT"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", --Instance Chat
                ["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "Interface\\AddOns\\IHearEverybody\\party.ogg", --Instance Leader
            }
            configUI.panel.selected.DropDownButton.Text:SetText(setSettingDropdownText(configUI.panel.selected.Text:GetText())); --fixme
        else
            print("notnil")
            configUI.panel.selected.DropDownButton.Text:SetText(setSettingDropdownText(configUI.panel.selected.Text:GetText())); --fixme
        end

    end,
    playerLogout = function()

    end,
}

configUI.eventHandler:SetScript("OnEvent", configUI.eventHandler.OnEvent);

--Add panel features
--Save Button
configUI.panel.saveButton = CreateFrame("Button", "CN_Config_SaveButton", configUI.panel, "GameMenuButtonTemplate");
configUI.panel.saveButton:SetPoint("CENTER", configUI.panel, "BOTTOMRIGHT", -40, 15);
configUI.panel.saveButton:SetSize(70,20);
configUI.panel.saveButton:SetText("Save");
configUI.panel.saveButton:SetNormalFontObject("GameFontNormal");
configUI.panel.saveButton:SetHighlightFontObject("GameFontHighlight");

--Message Type Dropdowns
--Function to use when an option is selected, to change what is being displayed
local function changeSettings(selected)
    print(selected.value); --FIXME
end
local function changeSound(selected)
    print(selected.value); --FIXME
end
--Function to check which is currently selected
local function checkedTest(self)
    return (self.value == configUI.panel.selected.Text:GetText());
end
local function checkedTestSound(self)
    return (self.value == nil);--FIXME
end
--Data to populate dropdowns
local dropdownData = {
    ["NormalMessages"] = {
        { text = "AFK", value = "CHAT_MSG_AFK", func = changeSettings, checked = checkedTest },
        { text = "BN_WHISPER", value = "CHAT_MSG_BN_WHISPER", func = changeSettings, checked = checkedTest, },
        { text = "BN_WHISPER_INFORM", value = "CHAT_MSG_BN_WHISPER_INFORM", func = changeSettings, checked = checkedTest, },
        { text = "BN_WHISPER_PLAYER_OFFLINE", value = "CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE", func = changeSettings, checked = checkedTest, },
        { text = "CHANNEL", value = "CHAT_MSG_CHANNEL", func = changeSettings, checked = checkedTest, },
        { text = "COMMUNITIES_CHANNEL", value = "CHAT_MSG_COMMUNITIES_CHANNEL", func = changeSettings, checked = checkedTest, },
        { text = "DND", value = "CHAT_MSG_DND", func = changeSettings, checked = checkedTest, },
        { text = "EMOTE", value = "CHAT_MSG_EMOTE", func = changeSettings, checked = checkedTest, },
        { text = "GUILD", value = "CHAT_MSG_GUILD", func = changeSettings, checked = checkedTest, },
        { text = "IGNORED", value = "CHAT_MSG_IGNORED", func = changeSettings, checked = checkedTest, },
        { text = "INSTANCE_CHAT", value = "CHAT_MSG_INSTANCE_CHAT", func = changeSettings, checked = checkedTest, },
        { text = "INSTANCE_CHAT_LEADER", value = "CHAT_MSG_INSTANCE_CHAT_LEADER", func = changeSettings, checked = checkedTest, },
        { text = "OFFICER", value = "CHAT_MSG_OFFICER", func = changeSettings, checked = checkedTest, },
        { text = "PARTY", value = "CHAT_MSG_PARTY", func = changeSettings, checked = checkedTest, },
        { text = "PARTY_LEADER", value = "CHAT_MSG_PARTY_LEADER", func = changeSettings, checked = checkedTest, },
        { text = "RAID", value = "CHAT_MSG_RAID", func = changeSettings, checked = checkedTest, },
        { text = "RAID_LEADER", value = "CHAT_MSG_RAID_LEADER", func = changeSettings, checked = checkedTest, },
        { text = "RAID_WARNING", value = "CHAT_MSG_RAID_WARNING", func = changeSettings, checked = checkedTest, },
        { text = "SAY", value = "CHAT_MSG_SAY", func = changeSettings, checked = checkedTest, },
        { text = "TEXT_EMOTE", value = "CHAT_MSG_TEXT_EMOTE", func = changeSettings, checked = checkedTest, },
        { text = "WHISPER", value = "CHAT_MSG_WHISPER", func = changeSettings, checked = checkedTest, },
        { text = "WHISPER_INFORM", value = "CHAT_MSG_WHISPER_INFORM", func = changeSettings, checked = checkedTest, },
        { text = "YELL", value = "CHAT_MSG_YELL", func = changeSettings, checked = checkedTest, },
    },
    ["SystemAndGameMessages"] = {
        { text = "ACHIEVEMENT", value = "CHAT_MSG_ACHIEVEMENT", func = changeSettings, checked = checkedTest, },
        { text = "ADDON", value = "CHAT_MSG_ADDON", func = changeSettings, checked = checkedTest, },
        { text = "ADDON_LOGGED", value = "CHAT_MSG_ADDON_LOGGED", func = changeSettings, checked = checkedTest, },
        { text = "BG_SYSTEM_ALLIANCE", value = "CHAT_MSG_BG_SYSTEM_ALLIANCE", func = changeSettings, checked = checkedTest, },
        { text = "BG_SYSTEM_HORDE", value = "CHAT_MSG_BG_SYSTEM_HORDE", func = changeSettings, checked = checkedTest, },
        { text = "BG_SYSTEM_NEUTRAL", value = "CHAT_MSG_BG_SYSTEM_NEUTRAL", func = changeSettings, checked = checkedTest, },
        { text = "COMBAT_FACTION_CHANGE", value = "CHAT_MSG_COMBAT_FACTION_CHANGE", func = changeSettings, checked = checkedTest, },
        { text = "COMBAT_HONOR_GAIN", value = "CHAT_MSG_COMBAT_HONOR_GAIN", func = changeSettings, checked = checkedTest, },
        { text = "COMBAT_MISC_INFO", value = "CHAT_MSG_COMBAT_MISC_INFO", func = changeSettings, checked = checkedTest, },
        { text = "COMBAT_XP_GAIN", value = "CHAT_MSG_COMBAT_XP_GAIN", func = changeSettings, checked = checkedTest, },
        { text = "CURRENCY", value = "CHAT_MSG_CURRENCY", func = changeSettings, checked = checkedTest, },
        { text = "LOOT", value = "CHAT_MSG_LOOT", func = changeSettings, checked = checkedTest, },
        { text = "MONEY", value = "CHAT_MSG_MONEY", func = changeSettings, checked = checkedTest, },
        { text = "SKILL", value = "CHAT_MSG_SKILL", func = changeSettings, checked = checkedTest, },
        { text = "SYSTEM", value = "CHAT_MSG_SYSTEM", func = changeSettings, checked = checkedTest, },
        { text = "TARGETICONS", value = "CHAT_MSG_TARGETICONS", func = changeSettings, checked = checkedTest, },
    },
    ["Social"] = {
        { text = "CHANNEL_JOIN", value = "CHAT_MSG_CHANNEL_JOIN", func = changeSettings, checked = checkedTest, },
        { text = "CHANNEL_LEAVE", value = "CHAT_MSG_CHANNEL_LEAVE", func = changeSettings, checked = checkedTest, },
        { text = "CHANNEL_NOTICE", value = "CHAT_MSG_CHANNEL_NOTICE", func = changeSettings, checked = checkedTest, },
        { text = "CHANNEL_NOTICE_USER", value = "CHAT_MSG_CHANNEL_NOTICE_USER", func = changeSettings, checked = checkedTest, },
        { text = "GUILD_ACHIEVEMENT", value = "CHAT_MSG_GUILD_ACHIEVEMENT", func = changeSettings, checked = checkedTest, },
        { text = "GUILD_ITEM_LOOTED", value = "CHAT_MSG_GUILD_ITEM_LOOTED", func = changeSettings, checked = checkedTest, },
    },
    ["NPCChatter"] = {
        { text = "MONSTER_EMOTE", value = "CHAT_MSG_MONSTER_EMOTE", func = changeSettings, checked = checkedTest, },
        { text = "MONSTER_PARTY", value = "CHAT_MSG_MONSTER_PARTY", func = changeSettings, checked = checkedTest, },
        { text = "MONSTER_SAY", value = "CHAT_MSG_MONSTER_SAY", func = changeSettings, checked = checkedTest, },
        { text = "MONSTER_WHISPER", value = "CHAT_MSG_MONSTER_WHISPER", func = changeSettings, checked = checkedTest, },
        { text = "MONSTER_YELL", value = "CHAT_MSG_MONSTER_YELL", func = changeSettings, checked = checkedTest, },
        { text = "RAID_BOSS_EMOTE", value = "CHAT_MSG_RAID_BOSS_EMOTE", func = changeSettings, checked = checkedTest, },
        { text = "RAID_BOSS_WHISPER", value = "CHAT_MSG_RAID_BOSS_WHISPER", func = changeSettings, checked = checkedTest, },
    },
    ["Sounds"] = {
        { text = "Disabled", value = nil, func = changeSound, checked = checkedTestSound},
        { text = "Guild", value = "Interface\\AddOns\\IHearEverybody\\guild.ogg", func = changeSound, checked = checkedTestSound },
        { text = "Party", value = "Interface\\AddOns\\IHearEverybody\\party.ogg", func = changeSound, checked = checkedTestSound },
        { text = "Wheep", value = "Interface\\AddOns\\IHearEverybody\\wheep.ogg", func = changeSound, checked = checkedTestSound },
        { text = "Whisper", value = "Interface\\AddOns\\IHearEverybody\\whisper.ogg", func = changeSound, checked = checkedTestSound },
        { text = "Woopwoop", value = "Interface\\AddOns\\IHearEverybody\\woopwoop.ogg", func = changeSound, checked = checkedTestSound },
    }
}

local configUIDropDownOnClick = {
    normal = function()
        EasyMenu(dropdownData.NormalMessages, configUI.panel.normalDropDown, configUI.panel.normalDropDownButton, 0, 0, "MENU");
    end,
    system = function()
        EasyMenu(dropdownData.SystemAndGameMessages, configUI.panel.systemDropDown, configUI.panel.systemDropDownButton, 0, 0, "MENU");
    end,
    social = function()
        EasyMenu(dropdownData.Social, configUI.panel.socialDropDown, configUI.panel.socialDropDownButton, 0, 0, "MENU");
    end,
    npc = function()
        EasyMenu(dropdownData.NPCChatter, configUI.panel.NPCDropDown, configUI.panel.NPCDropDownButton, 0, 0, "MENU");
    end,
    setting = function()
        EasyMenu(dropdownData.Sounds, configUI.panel.selected.DropDown, configUI.panel.selected.DropDownButton, 0, 0, "MENU");
    end
}



local function previewSound_OnClick()

    local selected = nil; -- FIXME
    local soundFile = dropdownData.Sounds[2].value;
end
local function getDescriptionText(selected)
    local output = CN_soundDescriptions[selected];
    if not (output == nil) then
        return CN_soundDescriptions[selected];
    else
        return "Error!"
    end
end
--NormalDropDown
configUI.panel.normalDropDown = CreateFrame("Frame", "CN_Config_NormalDropdown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.normalDropDownButton = CreateFrame("Button", "CN_Config_NormalDropdown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.normalDropDownButton:SetPoint("TOP", configUI.panel, "TOPLEFT", 59, -15);
configUI.panel.normalDropDownButton:SetSize(140,25);
configUI.panel.normalDropDownButton.initialize = configUIDropDownOnClick.normal;
--Normal Text
configUI.panel.normalDropDownButton.Text = configUI.panel.normalDropDownButton:CreateFontString(configUI.panel.normalDropDownButton.Text, "OVERLAY", "GameFontNormal");
configUI.panel.normalDropDownButton.Text:SetText("Normal Chat");
configUI.panel.normalDropDownButton.Text:SetPoint("TOP", configUI.panel, "TOPLEFT", 50, -23);



--SystemDropDown
configUI.panel.systemDropDown = CreateFrame("Frame", "CN_Config_SystemDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.systemDropDownButton = CreateFrame("Button", "CN_Config_SystemDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.systemDropDownButton:SetPoint("TOP", configUI.panel, "TOPLEFT", 209, -15);
configUI.panel.systemDropDownButton:SetSize(140,25);
configUI.panel.systemDropDownButton.initialize = configUIDropDownOnClick.system;
--System Text
configUI.panel.systemDropDownButton.Text = configUI.panel.systemDropDownButton:CreateFontString(configUI.panel.systemDropDownButton.Text, "OVERLAY", "GameFontNormal");
configUI.panel.systemDropDownButton.Text:SetText("System Messages");
configUI.panel.systemDropDownButton.Text:SetPoint("TOP", configUI.panel, "TOPLEFT", 215, -23); -- +6, +8

--SocialDropDown
configUI.panel.socialDropDown = CreateFrame("Frame", "CN_Config_SocialDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.socialDropDownButton = CreateFrame("Button", "CN_Config_SocialDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.socialDropDownButton:SetPoint("TOP", configUI.panel, "TOPLEFT", 359, -15);
configUI.panel.socialDropDownButton:SetSize(140,25);
configUI.panel.socialDropDownButton.initialize = configUIDropDownOnClick.social;
--Social Text
configUI.panel.socialDropDownButton.Text = configUI.panel.socialDropDownButton:CreateFontString(configUI.panel.socialDropDownButton.Text, "OVERLAY", "GameFontNormal");
configUI.panel.socialDropDownButton.Text:SetText("Social");
configUI.panel.socialDropDownButton.Text:SetPoint("TOP", configUI.panel, "TOPLEFT", 330, -23); -- -29, =8

--NPCDropDown
configUI.panel.NPCDropDown = CreateFrame("Frame", "CN_Config_NPCDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.NPCDropDownButton = CreateFrame("Button", "CN_Config_NPCDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.NPCDropDownButton:SetPoint("TOP", configUI.panel, "TOPLEFT", 509, -15);
configUI.panel.NPCDropDownButton:SetSize(140,25);
configUI.panel.NPCDropDownButton.initialize = configUIDropDownOnClick.npc;
--NPC Text
configUI.panel.NPCDropDownButton.Text = configUI.panel.NPCDropDownButton:CreateFontString(configUI.panel.NPCDropDownButton.Text, "OVERLAY", "GameFontNormal");
configUI.panel.NPCDropDownButton.Text:SetText("NPC Chatter");
configUI.panel.NPCDropDownButton.Text:SetPoint("TOP", configUI.panel, "TOPLEFT", 500, -23); -- -9, +8

--Config Options
--Selected option text
configUI.panel.selected = CreateFrame("Frame", "CN_Config_SelectedParent", configUI.panel);
configUI.panel.selected.Text = CreateFrame("Button", "CN_Config_selectedText", configUI.panel);
configUI.panel.selected.Text:SetPoint("BOTTOM", configUI.panel.normalDropDownButton, "BOTTOM", 45, -40);
configUI.panel.selected.Text:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", tile = true, tileSize = 16, insets = {left = 0, right = 0, top = 0, bottom = 0},})
configUI.panel.selected.Text:SetSize(190,25);
configUI.panel.selected.Text:SetText("CHAT_MSG_PARTY");
configUI.panel.selected.Text:SetNormalFontObject("GameFontNormal");

--Description of what selected option does
configUI.panel.selected.description = configUI.panel.selected:CreateFontString(configUI.panel.selected.description, "OVERLAY","GameFontNormal");
configUI.panel.selected.description:SetPoint("BOTTOM", configUI.panel.selected.Text, "BOTTOM", 205, -50);
configUI.panel.selected.description:SetSize(600,50);
configUI.panel.selected.description:SetText(getDescriptionText(configUI.panel.selected.Text:GetText()))

--SettingDropDown
configUI.panel.selected.DropDown = CreateFrame("Frame", "CN_Config_selectedDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.selected.DropDownButton = CreateFrame("Button", "CN_Config_selectedDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.selected.DropDownButton:SetPoint("CENTER", configUI.panel.selected.Text, "CENTER", 165, 0);
configUI.panel.selected.DropDownButton:SetSize(140,25);
configUI.panel.selected.DropDownButton.initialize = configUIDropDownOnClick.setting;
--Setting Text
configUI.panel.selected.DropDownButton.Text = configUI.panel.selected.DropDownButton:CreateFontString(configUI.panel.selected.DropDownButton.Text, "OVERLAY", "GameFontNormal");
--configUI.panel.selected.DropDownButton.Text:SetText(setSettingDropdownText(configUI.panel.selected.Text:GetText())); --fixme
configUI.panel.selected.DropDownButton.Text:SetPoint("CENTER", configUI.panel.selected.DropDownButton, "CENTER", 0, 0);
--Preview Sound button
configUI.panel.selected.previewButton = CreateFrame("Button", "CN_Config_selectedPreviewButton", configUI.panel, "GameMenuButtonTemplate");
configUI.panel.selected.previewButton:SetPoint("CENTER", configUI.panel.selected.DropDownButton, "CENTER", 200, 0);
configUI.panel.selected.previewButton:SetSize(140,25);
configUI.panel.selected.previewButton:SetText("Preview Sound");
configUI.panel.selected.previewButton:SetNormalFontObject("GameFontNormal");
configUI.panel.selected.previewButton:SetHighlightFontObject("GameFontHighlight");
configUI.panel.selected.previewButton:SetScript("OnClick", previewSound_OnClick)