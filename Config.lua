--Create config UI within Blizzard's addon config panel.
local configUI = {}
configUI.panel = CreateFrame("Frame","CN_ConfigUI", UIParent);
configUI.panel:RegisterEvent("ADDON_LOADED"); -- Fired when saved variables are loaded
configUI.panel:RegisterEvent("PLAYER_LOGOUT"); -- Fired when about to log out
configUI.panel.name = "Chat Notifications";
InterfaceOptions_AddCategory(configUI.panel);
--Setup chat command to open configUI
SLASH_CHATNOTIFICATIONSCONFIG1 = "/chatnc";
function SlashCmdList.CHATNOTIFICATIONSCONFIG(msg)
    print("test");
end

--Add Buttons
--Save Button
configUI.panel.saveButton = CreateFrame("Button", "CN_Config_SaveButton", configUI.panel, "GameMenuButtonTemplate");
configUI.panel.saveButton:SetPoint("CENTER", configUI.panel, "BOTTOMRIGHT", -40, 15);
configUI.panel.saveButton:SetSize(70,20);
configUI.panel.saveButton:SetText("Save");
configUI.panel.saveButton:SetNormalFontObject("GameFontNormal");
configUI.panel.saveButton:SetHighlightFontObject("GameFontHighlight");

--Message Type Dropdowns
--Functions to use when an option is selected, to change what is being displayed
local function changeSettingsNormal(selected)
    print(selected.value);
end
local function changeSettingsSystem(selected)
    print(selected.value);
end
local function changeSettingsSocial(selected)
    print(selected.value);
end
local function changeSettingsNPC(selected)
    print(selected.value);
end
--Data to populate dropdowns
local dropdownData = {
    ["NormalMessages"] = {
        { text = "AFK", value = "CHAT_MSG_AFK", func = changeSettingsNormal, },
        { text = "BN_WHISPER", value = "CHAT_MSG_BN_WHISPER", func = changeSettingsNormal, },
        { text = "BN_WHISPER_INFORM", value = "CHAT_MSG_BN_WHISPER_INFORM", func = changeSettingsNormal, },
        { text = "BN_WHISPER_PLAYER_OFFLINE", value = "CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE", func = changeSettingsNormal, },
        { text = "CHANNEL", value = "CHAT_MSG_CHANNEL", func = changeSettingsNormal, },
        { text = "COMMUNITIES_CHANNEL", value = "CHAT_MSG_COMMUNITIES_CHANNEL", func = changeSettingsNormal, },
        { text = "DND", value = "CHAT_MSG_DND", func = changeSettingsNormal, },
        { text = "EMOTE", value = "CHAT_MSG_EMOTE", func = changeSettingsNormal, },
        { text = "GUILD", value = "CHAT_MSG_GUILD", func = changeSettingsNormal, },
        { text = "IGNORED", value = "CHAT_MSG_IGNORED", func = changeSettingsNormal, },
        { text = "INSTANCE_CHAT", value = "CHAT_MSG_INSTANCE_CHAT", func = changeSettingsNormal, },
        { text = "INSTANCE_CHAT_LEADER", value = "CHAT_MSG_INSTANCE_CHAT_LEADER", func = changeSettingsNormal, },
        { text = "OFFICER", value = "CHAT_MSG_OFFICER", func = changeSettingsNormal, },
        { text = "PARTY", value = "CHAT_MSG_PARTY", func = changeSettingsNormal, },
        { text = "PARTY_LEADER", value = "CHAT_MSG_PARTY_LEADER", func = changeSettingsNormal, },
        { text = "RAID", value = "CHAT_MSG_RAID", func = changeSettingsNormal, },
        { text = "RAID_LEADER", value = "CHAT_MSG_RAID_LEADER", func = changeSettingsNormal, },
        { text = "RAID_WARNING", value = "CHAT_MSG_RAID_WARNING", func = changeSettingsNormal, },
        { text = "SAY", value = "CHAT_MSG_SAY", func = changeSettingsNormal, },
        { text = "TEXT_EMOTE", value = "CHAT_MSG_TEXT_EMOTE", func = changeSettingsNormal, },
        { text = "WHISPER", value = "CHAT_MSG_WHISPER", func = changeSettingsNormal, },
        { text = "WHISPER_INFORM", value = "CHAT_MSG_WHISPER_INFORM", func = changeSettingsNormal, },
        { text = "YELL", value = "CHAT_MSG_YELL", func = changeSettingsNormal, },
    },
    ["SystemAndGameMessages"] = {
        { text = "ACHIEVEMENT", value = "CHAT_MSG_ACHIEVEMENT", func = changeSettingsSystem, },
        { text = "ADDON", value = "CHAT_MSG_ADDON", func = changeSettingsSystem, },
        { text = "ADDON_LOGGED", value = "CHAT_MSG_ADDON_LOGGED", func = changeSettingsSystem, },
        { text = "BG_SYSTEM_ALLIANCE", value = "CHAT_MSG_BG_SYSTEM_ALLIANCE", func = changeSettingsSystem, },
        { text = "BG_SYSTEM_HORDE", value = "CHAT_MSG_BG_SYSTEM_HORDE", func = changeSettingsSystem, },
        { text = "BG_SYSTEM_NEUTRAL", value = "CHAT_MSG_BG_SYSTEM_NEUTRAL", func = changeSettingsSystem, },
        { text = "COMBAT_FACTION_CHANGE", value = "CHAT_MSG_COMBAT_FACTION_CHANGE", func = changeSettingsSystem, },
        { text = "COMBAT_HONOR_GAIN", value = "CHAT_MSG_COMBAT_HONOR_GAIN", func = changeSettingsSystem, },
        { text = "COMBAT_MISC_INFO", value = "CHAT_MSG_COMBAT_MISC_INFO", func = changeSettingsSystem, },
        { text = "COMBAT_XP_GAIN", value = "CHAT_MSG_COMBAT_XP_GAIN", func = changeSettingsSystem, },
        { text = "CURRENCY", value = "CHAT_MSG_CURRENCY", func = changeSettingsSystem, },
        { text = "LOOT", value = "CHAT_MSG_LOOT", func = changeSettingsSystem, },
        { text = "MONEY", value = "CHAT_MSG_MONEY", func = changeSettingsSystem, },
        { text = "SKILL", value = "CHAT_MSG_SKILL", func = changeSettingsSystem, },
        { text = "SYSTEM", value = "CHAT_MSG_SYSTEM", func = changeSettingsSystem, },
        { text = "TARGETICONS", value = "CHAT_MSG_TARGETICONS", func = changeSettingsSystem, },
    },
    ["Social"] = {
        { text = "CHANNEL_JOIN", value = "CHAT_MSG_CHANNEL_JOIN", func = changeSettingsSocial, },
        { text = "CHANNEL_LEAVE", value = "CHAT_MSG_CHANNEL_LEAVE", func = changeSettingsSocial, },
        { text = "CHANNEL_NOTICE", value = "CHAT_MSG_CHANNEL_NOTICE", func = changeSettingsSocial, },
        { text = "CHANNEL_NOTICE_USER", value = "CHAT_MSG_CHANNEL_NOTICE_USER", func = changeSettingsSocial, },
        { text = "GUILD_ACHIEVEMENT", value = "CHAT_MSG_GUILD_ACHIEVEMENT", func = changeSettingsSocial, },
        { text = "GUILD_ITEM_LOOTED", value = "CHAT_MSG_GUILD_ITEM_LOOTED", func = changeSettingsSocial, },
    },
    ["NPCChatter"] = {
        { text = "MONSTER_EMOTE", value = "CHAT_MSG_MONSTER_EMOTE", func = changeSettingsNPC, },
        { text = "MONSTER_PARTY", value = "CHAT_MSG_MONSTER_PARTY", func = changeSettingsNPC, },
        { text = "MONSTER_SAY", value = "CHAT_MSG_MONSTER_SAY", func = changeSettingsNPC, },
        { text = "MONSTER_WHISPER", value = "CHAT_MSG_MONSTER_WHISPER", func = changeSettingsNPC, },
        { text = "MONSTER_YELL", value = "CHAT_MSG_MONSTER_YELL", func = changeSettingsNPC, },
        { text = "RAID_BOSS_EMOTE", value = "CHAT_MSG_RAID_BOSS_EMOTE", func = changeSettingsNPC, },
        { text = "RAID_BOSS_WHISPER", value = "CHAT_MSG_RAID_BOSS_WHISPER", func = changeSettingsNPC, },
    },
}

local configUIDropDownOnClick = {
    normal = function()
        EasyMenu(dropdownData.NormalMessages, configUI.panel.normalDropDown, configUI.panel.normalDropDownButton, 0, 0);
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
}

--Normal
configUI.panel.normalDropDown = CreateFrame("Frame", "CN_Config_NormalDropdown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.normalDropDownButton = CreateFrame("Button", "CN_Config_NormalDropdown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.normalDropDownButton:SetPoint("CENTER", configUI.panel, "TOPLEFT", 59, -15);
configUI.panel.normalDropDownButton:SetSize(140,25);
configUI.panel.normalDropDownButton:SetText("Normal Chat");
configUI.panel.normalDropDownButton.initialize = configUIDropDownOnClick.normal;
configUI.panel.normalDropDownButtonText = configUI.panel.normalDropDownButton:CreateFontString(configUI.panel.normalDropDownButtonText, "OVERLAY", "GameFontNormal");
configUI.panel.normalDropDownButtonText:SetText("test");
configUI.panel.normalDropDownButtonText:SetPoint("RIGHT", configUI.panel.normalDropDownButton, "CENTER", 0, 0);
--System
configUI.panel.systemDropDown = CreateFrame("Frame", "CN_Config_SystemDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.systemDropDownButton = CreateFrame("Button", "CN_Config_SystemDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.systemDropDownButton:SetPoint("CENTER", configUI.panel, "TOPLEFT", 59, -100);
configUI.panel.systemDropDownButton:SetSize(140,25);
configUI.panel.systemDropDownButton.initialize = configUIDropDownOnClick.system;
--configUI.panel.systemDropDownButton:SetText("System Messages");

--Social
configUI.panel.socialDropDown = CreateFrame("Frame", "CN_Config_SocialDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.socialDropDownButton = CreateFrame("Button", "CN_Config_SocialDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.socialDropDownButton:SetPoint("CENTER", configUI.panel, "TOPLEFT", 59, -185);
configUI.panel.socialDropDownButton:SetSize(140,25);
configUI.panel.socialDropDownButton.initialize = configUIDropDownOnClick.social;
--configUI.panel.socialDropDownButton:SetText("Social");

--NPC
configUI.panel.NPCDropDown = CreateFrame("Frame", "CN_Config_NPCDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.NPCDropDownButton = CreateFrame("Button", "CN_Config_NPCDropDown", configUI.panel, "UIDropDownMenuTemplate")
configUI.panel.NPCDropDownButton:SetPoint("CENTER", configUI.panel, "TOPLEFT", 59, -270);
configUI.panel.NPCDropDownButton:SetSize(140,25);
configUI.panel.NPCDropDownButton.initialize = configUIDropDownOnClick.npc;
--configUI.panel.NPCDropDownButton:SetText("NPC Chatter");



