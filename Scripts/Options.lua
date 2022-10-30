plugin.GetOptionsPanel = function(self)

	-- Create Options Panel --
	optionsPanel = Turbine.UI.Control();
	optionsPanel:SetSize(500, 1070);


	-- Options title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Settings");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(0, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("HunterFocusDisplay/Images/optionsTitleBackground.tga"));


	-- Allow movement--
	option_allowMovement_label = Turbine.UI.Label();
	option_allowMovement_label:SetParent(optionsPanel);
	option_allowMovement_label:SetSize(300, 30);
	option_allowMovement_label:SetPosition(110, 70);
	option_allowMovement_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_allowMovement_label:SetText("Allow movement");
	option_allowMovement_label:SetForeColor(Turbine.UI.Color.White);
	option_allowMovement_checkbox = Turbine.UI.Lotro.CheckBox();
	option_allowMovement_checkbox:SetParent(optionsPanel);
	option_allowMovement_checkbox:SetSize(20, 20);
	option_allowMovement_checkbox:SetPosition(80, 69);
	option_allowMovement_checkbox:SetChecked(options["enableMovement"]);


	-- Display number --
	option_displayNumber_label = Turbine.UI.Label();
	option_displayNumber_label:SetParent(optionsPanel);
	option_displayNumber_label:SetSize(300, 30);
	option_displayNumber_label:SetPosition(110, 95);
	option_displayNumber_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_displayNumber_label:SetText("Display Number");
	option_displayNumber_label:SetForeColor(Turbine.UI.Color.White);
	option_displayNumber_checkbox = Turbine.UI.Lotro.CheckBox();
	option_displayNumber_checkbox:SetParent(optionsPanel);
	option_displayNumber_checkbox:SetSize(20, 20);
	option_displayNumber_checkbox:SetPosition(80, 94);
	option_displayNumber_checkbox:SetChecked(options["displayNumber"]);


	-- Hide out of combat --
	option_hideOutOfCombat_label = Turbine.UI.Label();
	option_hideOutOfCombat_label:SetParent(optionsPanel);
	option_hideOutOfCombat_label:SetSize(300, 30);
	option_hideOutOfCombat_label:SetPosition(110, 120);
	option_hideOutOfCombat_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_hideOutOfCombat_label:SetText("Hide when out of combat");
	option_hideOutOfCombat_label:SetForeColor(Turbine.UI.Color.White);
	option_hideOutOfCombat_checkbox = Turbine.UI.Lotro.CheckBox();
	option_hideOutOfCombat_checkbox:SetParent(optionsPanel);
	option_hideOutOfCombat_checkbox:SetSize(20, 20);
	option_hideOutOfCombat_checkbox:SetPosition(80, 119);
	option_hideOutOfCombat_checkbox:SetChecked(options["hideOutOfCombat"]);


	-- FocusBarLenght --
	option_focusBarLenght_label = Turbine.UI.Label();
	option_focusBarLenght_label:SetParent(optionsPanel);
	option_focusBarLenght_label:SetSize(300, 30);
	option_focusBarLenght_label:SetPosition(80, 150);
	option_focusBarLenght_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_focusBarLenght_label:SetText("Bar Lenght");
	option_focusBarLenght_label:SetForeColor(Turbine.UI.Color.White);
	option_focusBarLenght_textbox = Turbine.UI.Lotro.TextBox();
	option_focusBarLenght_textbox:SetParent(optionsPanel);
	option_focusBarLenght_textbox:SetMultiline(false);
	option_focusBarLenght_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_focusBarLenght_textbox:SetText(options["focusBarLenght"]);
	option_focusBarLenght_textbox:SetSize(100, 20);
	option_focusBarLenght_textbox:SetPosition(80, 170);
	option_focusBarLenght_textbox:SetZOrder(100);
	option_focusBarLenght_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_focusBarLenght_textbox:SetText(option_focusBarLenght_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- FocusBarHeight --
	option_focusBarHeight_label = Turbine.UI.Label();
	option_focusBarHeight_label:SetParent(optionsPanel);
	option_focusBarHeight_label:SetSize(300, 30);
	option_focusBarHeight_label:SetPosition(80, 200);
	option_focusBarHeight_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_focusBarHeight_label:SetText("Bar Height");
	option_focusBarHeight_label:SetForeColor(Turbine.UI.Color.White);
	option_focusBarHeight_textbox = Turbine.UI.Lotro.TextBox();
	option_focusBarHeight_textbox:SetParent(optionsPanel);
	option_focusBarHeight_textbox:SetMultiline(false);
	option_focusBarHeight_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_focusBarHeight_textbox:SetText(options["focusBarHeight"]);
	option_focusBarHeight_textbox:SetSize(100, 20);
	option_focusBarHeight_textbox:SetPosition(80, 220);
	option_focusBarHeight_textbox:SetZOrder(100);
	option_focusBarHeight_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_focusBarHeight_textbox:SetText(option_focusBarHeight_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- FocusBarGap --
	option_focusBarGap_label = Turbine.UI.Label();
	option_focusBarGap_label:SetParent(optionsPanel);
	option_focusBarGap_label:SetSize(300, 30);
	option_focusBarGap_label:SetPosition(80, 250);
	option_focusBarGap_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_focusBarGap_label:SetText("Bar Gap");
	option_focusBarGap_label:SetForeColor(Turbine.UI.Color.White);
	option_focusBarGap_textbox = Turbine.UI.Lotro.TextBox();
	option_focusBarGap_textbox:SetParent(optionsPanel);
	option_focusBarGap_textbox:SetMultiline(false);
	option_focusBarGap_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_focusBarGap_textbox:SetText(options["focusBarGap"]);
	option_focusBarGap_textbox:SetSize(100, 20);
	option_focusBarGap_textbox:SetPosition(80, 270);
	option_focusBarGap_textbox:SetZOrder(100);
	option_focusBarGap_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_focusBarGap_textbox:SetText(option_focusBarGap_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- Color customization --
	customizationTitle = Turbine.UI.Label();
	customizationTitle:SetParent(optionsPanel);
	customizationTitle:SetText("Color Customization");
	customizationTitle:SetSize(400, 30);
	customizationTitle:SetPosition(0, 320);
	customizationTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	customizationTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	customizationTitle:SetForeColor(Turbine.UI.Color.Yellow);
	customizationTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	customizationTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	customizationTitle:SetBackground(Turbine.UI.Graphic("HunterFocusDisplay/Images/optionsTitleBackground.tga"));

	color_customization1 = createCustomizationOption(optionsPanel, 80, 380, "pip 1 color", "pip_1_color");
	color_customization2 = createCustomizationOption(optionsPanel, 80, 440, "pip 2 color", "pip_2_color");
	color_customization3 = createCustomizationOption(optionsPanel, 80, 500, "pip 3 color", "pip_3_color");
	color_customization4 = createCustomizationOption(optionsPanel, 80, 560, "pip 4 color", "pip_4_color");
	color_customization5 = createCustomizationOption(optionsPanel, 80, 620, "pip 5 color", "pip_5_color");
	color_customization6 = createCustomizationOption(optionsPanel, 80, 680, "pip 6 color", "pip_6_color");
	color_customization7 = createCustomizationOption(optionsPanel, 80, 740, "pip 7 color", "pip_7_color");
	color_customization8 = createCustomizationOption(optionsPanel, 80, 800, "pip 8 color", "pip_8_color");
	color_customization9 = createCustomizationOption(optionsPanel, 80, 860, "pip 9 color", "pip_9_color");


	-- Troubleshooting title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Troubleshooting");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(300, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("HunterFocusDisplay/Images/optionsTitleBackground.tga"));


	-- Reset position button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset Position");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 80);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		FocusWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		notification("Position has been resetted.");
	end


	-- Reset settings button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset All Settings");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 120);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		options["enableMovement"] = defaultOptions["enableMovement"];
		options["displayNumber"] = defaultOptions["displayNumber"];
		options["focusBarLenght"] = defaultOptions["focusBarLenght"];
		options["focusBarHeight"] = defaultOptions["focusBarHeight"];
		options["focusBarGap"] = defaultOptions["focusBarGap"];
		options["hideOutOfCombat"] = defaultOptions["hideOutOfCombat"];

		FocusWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		option_allowMovement_checkbox:SetChecked(defaultOptions["enableMovement"])
		FocusWindowClass.moveControl:SetMouseVisible(defaultOptions["enableMovement"])
		option_hideOutOfCombat_checkbox:SetChecked(defaultOptions["hideOutOfCombat"]);
		FocusWindowClass:SetOpacity(1)
		FocusWindowClass:SetWantsUpdates(defaultOptions["hideOutOfCombat"])
		option_displayNumber_checkbox:SetChecked(defaultOptions["displayNumber"]);
		FocusWindowClass.Focus_label:SetVisible(defaultOptions["displayNumber"])
		option_focusBarLenght_textbox:SetText(defaultOptions["focusBarLenght"])
		option_focusBarHeight_textbox:SetText(defaultOptions["focusBarHeight"])
		option_focusBarGap_textbox:SetText(defaultOptions["focusBarGap"])

		FocusWindowClass:UpdateElements();
		notification("All Settings has been resetted.");
	end


	-- Apply options button --
	apllyButton = Turbine.UI.Lotro.Button();
	apllyButton:SetText("Apply");
	apllyButton:SetParent(optionsPanel);
	apllyButton:SetSize(150, 20);
	apllyButton:SetPosition(80, 970);
	apllyButton:SetZOrder(100);
	apllyButton.Click = function( sender, args)

		options["enableMovement"] = option_allowMovement_checkbox:IsChecked();
		FocusWindowClass.moveControl:SetMouseVisible(options["enableMovement"])

		options["hideOutOfCombat"] = option_hideOutOfCombat_checkbox:IsChecked();
		if (options["hideOutOfCombat"]) then
			FocusWindowClass.localPlayer.InCombatChanged();
		else
			FocusWindowClass:SetWantsUpdates(false)
			FocusWindowClass:SetOpacity(1)
		end

		options["displayNumber"] = option_displayNumber_checkbox:IsChecked();
		FocusWindowClass.Focus_label:SetVisible(options["displayNumber"])

		if (option_focusBarLenght_textbox:GetText() == "") then
			option_focusBarLenght_textbox:SetText("0")
		end

		if (option_focusBarHeight_textbox:GetText() == "") then
			option_focusBarHeight_textbox:SetText("0")
		end

		if (option_focusBarGap_textbox:GetText() == "") then
			option_focusBarGap_textbox:SetText("0")
		end

		options["focusBarLenght"] = option_focusBarLenght_textbox:GetText();
		options["focusBarHeight"] = option_focusBarHeight_textbox:GetText();
		options["focusBarGap"] = option_focusBarGap_textbox:GetText();

		options["pip_1_color"] = color_customization1["colorReview"]:GetBackColor();
		options["pip_2_color"] = color_customization2["colorReview"]:GetBackColor();
		options["pip_3_color"] = color_customization3["colorReview"]:GetBackColor();
		options["pip_4_color"] = color_customization4["colorReview"]:GetBackColor();
		options["pip_5_color"] = color_customization5["colorReview"]:GetBackColor();
		options["pip_6_color"] = color_customization6["colorReview"]:GetBackColor();
		options["pip_7_color"] = color_customization7["colorReview"]:GetBackColor();
		options["pip_8_color"] = color_customization8["colorReview"]:GetBackColor();
		options["pip_9_color"] = color_customization9["colorReview"]:GetBackColor();

		FocusWindowClass:UpdateElements();
		notification("Options have been applied.");
	end


	-- Return View --
	return optionsPanel;
end





-- Build layout for customization options --
function createCustomizationOption(parent, xPos, yPos, text, keyValue)

	local label = Turbine.UI.Label();
	label:SetParent(parent);
	label:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
	label:SetText(text);
	label:SetSize(240, 30);
	label:SetPosition(xPos, yPos);


	local colorReview = Turbine.UI.Control()
	colorReview:SetParent(parent)
	colorReview:SetSize(80, 20)
    colorReview:SetPosition(xPos, yPos + 20)
	colorReview:SetBackColor(options[keyValue])
    colorReview:SetVisible(true)


	local editButton = Turbine.UI.Lotro.Button();
	editButton:SetText("Edit");
	editButton:SetParent(parent);
	editButton:SetSize(75, 30);
	editButton:SetPosition(xPos + 100, yPos + 20);
	editButton.Click = function( sender, args)
		if colorPicker ~= nil then
			colorPickerLastPositionX, colorPickerLastPositionY = colorPicker:GetPosition();
			colorPicker:Close();
		end

		colorPicker = HunterFocusDisplay.Utility.ColorPicker(colorReview:GetBackColor(), "H");
		colorPicker:SetZOrder(9999);

		if (colorPickerLastPositionX ~= nil) then
			colorPicker:SetPosition(colorPickerLastPositionX, colorPickerLastPositionY);
		end

		colorPicker.ColorChanged = function(picker)
			colorReview:SetBackColor(picker:GetColor());
		end

		colorPicker.Accepted = function(picker)
			colorReview:SetBackColor(picker:GetColor());
			colorPicker:Close();
		end
	end


	local revertButton = Turbine.UI.Lotro.Button();
	revertButton:SetText("Revert");
	revertButton:SetParent(parent);
	revertButton:SetSize(75, 30);
	revertButton:SetPosition(xPos + 180, yPos + 20);
	revertButton.Click = function( sender, args)
		-- Revert color back to what it was when plugin was loaded --
		colorReview:SetBackColor(options[keyValue]);
	end


	local defaultButton = Turbine.UI.Lotro.Button();
	defaultButton:SetText("Default");
	defaultButton:SetParent(parent);
	defaultButton:SetSize(75, 30);
	defaultButton:SetPosition(xPos + 260, yPos + 20);
	defaultButton.Click = function( sender, args)
		-- Reset color to default settings --
		colorReview:SetBackColor(defaultOptions[keyValue]);
	end


	-- Return created objects --
	data = {}
	data["label"] = label;
	data["colorReview"] = colorReview;
	data["editButton"] = editButton;
	data["revertButton"] = revertButton;
	data["defaultButton"] = defaultButton;
	return data;
end