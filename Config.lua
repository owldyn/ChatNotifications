--Create config UI within Blizzard's addon config panel.
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