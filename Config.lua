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
configUI.panel.saveButton = CreateFrame("Button", nil, configUI.panel, "GameMenuButtonTemplate");
configUI.panel.saveButton:SetPoint("CENTER", configUI.panel, "BOTTOMRIGHT", -70, 20);
configUI.panel.saveButton:SetSize(140,40);
configUI.panel.saveButton:SetText("Save");
configUI.panel.saveButton:SetNormalFontObject("GameFontNormalLarge");
configUI.panel.saveButton:SetHighlightFontObject("GameFontHighlightLarge");

