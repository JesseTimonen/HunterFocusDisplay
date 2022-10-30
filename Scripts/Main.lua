FocusWindow = class (Turbine.UI.Window)

function FocusWindow:Constructor()
	Turbine.UI.Window.Constructor(self)

	self:SetSize(options["focusBarLenght"] * 9 + options["focusBarGap"] * 8, options["focusBarHeight"] + 20)
	self:SetPosition(options["xPos"], options["yPos"])
    self:SetWantsKeyEvents(true);
	self:SetVisible(true)
	if (options["hideOutOfCombat"]) then
        self:SetOpacity(0)
    else
        self:SetOpacity(1)
    end

    -- Hide the UI with F12 --
    self.KeyDown = function( sender, args)
        if (args.Action == 268435635) then
            self:SetVisible(not self:IsVisible());
        end
    end


	self.Focus_label = Turbine.UI.Label()
	self.Focus_label:SetParent(self)
    self.Focus_label:SetSize(options["focusBarHeight"] + 50, options["focusBarHeight"] + 20)
	self.Focus_label:SetPosition((self:GetWidth() / 2) - (self.Focus_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Focus_label:GetHeight() / 2))
    self.Focus_label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter)
    self.Focus_label:SetVisible(options["displayNumber"])
	self.Focus_label:SetFont(Turbine.UI.Lotro.Font.TrajanProBold30)
    self.Focus_label:SetText("0")
    self.Focus_label:SetZOrder(2)
    self.Focus_label:SetForeColor(Turbine.UI.Color.White)
    self.Focus_label:SetOutlineColor(Turbine.UI.Color.Black)
    self.Focus_label:SetFontStyle(Turbine.UI.FontStyle.Outline);


	self.Focus_1_parent = Turbine.UI.Control()
	self.Focus_1_parent:SetParent(self)
	self.Focus_1_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Focus_1_parent:GetHeight() / 2))
	self.Focus_1_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_1_parent:SetVisible(true)
    self.Focus_1_child = Turbine.UI.Control()
	self.Focus_1_child:SetParent(self.Focus_1_parent)
	self.Focus_1_child:SetPosition(1, 1)
	self.Focus_1_child:SetSize(self.Focus_1_parent:GetWidth() - 2, self.Focus_1_parent:GetHeight() - 2)
	self.Focus_1_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_1_child:SetVisible(true)


    self.Focus_2_parent = Turbine.UI.Control()
	self.Focus_2_parent:SetParent(self)
	self.Focus_2_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_2_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]), (self:GetHeight() / 2) - (self.Focus_2_parent:GetHeight() / 2))
	self.Focus_2_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_2_parent:SetVisible(true)
    self.Focus_2_child = Turbine.UI.Control()
	self.Focus_2_child:SetParent(self.Focus_2_parent)
	self.Focus_2_child:SetPosition(1, 1)
	self.Focus_2_child:SetSize(self.Focus_2_parent:GetWidth() - 2, self.Focus_2_parent:GetHeight() - 2)
	self.Focus_2_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_2_child:SetVisible(true)


    self.Focus_3_parent = Turbine.UI.Control()
	self.Focus_3_parent:SetParent(self)
	self.Focus_3_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_3_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 2, (self:GetHeight() / 2) - (self.Focus_3_parent:GetHeight() / 2))
	self.Focus_3_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_3_parent:SetVisible(true)
    self.Focus_3_child = Turbine.UI.Control()
	self.Focus_3_child:SetParent(self.Focus_3_parent)
	self.Focus_3_child:SetPosition(1, 1)
	self.Focus_3_child:SetSize(self.Focus_3_parent:GetWidth() - 2, self.Focus_3_parent:GetHeight() - 2)
	self.Focus_3_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_3_child:SetVisible(true)


    self.Focus_4_parent = Turbine.UI.Control()
	self.Focus_4_parent:SetParent(self)
	self.Focus_4_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_4_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 3, (self:GetHeight() / 2) - (self.Focus_4_parent:GetHeight() / 2))
	self.Focus_4_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_4_parent:SetVisible(true)
    self.Focus_4_child = Turbine.UI.Control()
	self.Focus_4_child:SetParent(self.Focus_4_parent)
	self.Focus_4_child:SetPosition(1, 1)
	self.Focus_4_child:SetSize(self.Focus_4_parent:GetWidth() - 2, self.Focus_4_parent:GetHeight() - 2)
	self.Focus_4_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_4_child:SetVisible(true)


    self.Focus_5_parent = Turbine.UI.Control()
	self.Focus_5_parent:SetParent(self)
	self.Focus_5_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_5_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 4, (self:GetHeight() / 2) - (self.Focus_5_parent:GetHeight() / 2))
	self.Focus_5_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_5_parent:SetVisible(true)
    self.Focus_5_child = Turbine.UI.Control()
	self.Focus_5_child:SetParent(self.Focus_5_parent)
	self.Focus_5_child:SetPosition(1, 1)
	self.Focus_5_child:SetSize(self.Focus_5_parent:GetWidth() - 2, self.Focus_5_parent:GetHeight() - 2)
	self.Focus_5_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_5_child:SetVisible(true)


    self.Focus_6_parent = Turbine.UI.Control()
	self.Focus_6_parent:SetParent(self)
	self.Focus_6_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_6_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 5, (self:GetHeight() / 2) - (self.Focus_6_parent:GetHeight() / 2))
	self.Focus_6_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_6_parent:SetVisible(true)
    self.Focus_6_child = Turbine.UI.Control()
	self.Focus_6_child:SetParent(self.Focus_6_parent)
	self.Focus_6_child:SetPosition(1, 1)
	self.Focus_6_child:SetSize(self.Focus_6_parent:GetWidth() - 2, self.Focus_6_parent:GetHeight() - 2)
	self.Focus_6_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_6_child:SetVisible(true)


    self.Focus_7_parent = Turbine.UI.Control()
	self.Focus_7_parent:SetParent(self)
	self.Focus_7_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_7_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 6, (self:GetHeight() / 2) - (self.Focus_7_parent:GetHeight() / 2))
	self.Focus_7_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_7_parent:SetVisible(true)
    self.Focus_7_child = Turbine.UI.Control()
	self.Focus_7_child:SetParent(self.Focus_7_parent)
	self.Focus_7_child:SetPosition(1, 1)
	self.Focus_7_child:SetSize(self.Focus_7_parent:GetWidth() - 2, self.Focus_7_parent:GetHeight() - 2)
	self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_7_child:SetVisible(true)


    self.Focus_8_parent = Turbine.UI.Control()
	self.Focus_8_parent:SetParent(self)
	self.Focus_8_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_8_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 7, (self:GetHeight() / 2) - (self.Focus_8_parent:GetHeight() / 2))
	self.Focus_8_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_8_parent:SetVisible(true)
    self.Focus_8_child = Turbine.UI.Control()
	self.Focus_8_child:SetParent(self.Focus_8_parent)
	self.Focus_8_child:SetPosition(1, 1)
	self.Focus_8_child:SetSize(self.Focus_8_parent:GetWidth() - 2, self.Focus_8_parent:GetHeight() - 2)
	self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_8_child:SetVisible(true)


    self.Focus_9_parent = Turbine.UI.Control()
	self.Focus_9_parent:SetParent(self)
	self.Focus_9_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_9_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 8, (self:GetHeight() / 2) - (self.Focus_9_parent:GetHeight() / 2))
	self.Focus_9_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_9_parent:SetVisible(true)
    self.Focus_9_child = Turbine.UI.Control()
	self.Focus_9_child:SetParent(self.Focus_9_parent)
	self.Focus_9_child:SetPosition(1, 1)
	self.Focus_9_child:SetSize(self.Focus_9_parent:GetWidth() - 2, self.Focus_9_parent:GetHeight() - 2)
	self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
    self.Focus_9_child:SetVisible(true)



    self.localPlayer = Turbine.Gameplay.LocalPlayer.GetInstance();
    self.localPlayer.InCombatChanged = function(sender, args)
        if (options["hideOutOfCombat"]) then
            self:SetWantsUpdates(true);
        end
    end
    self.localPlayer.InCombatChanged();

    self.Update = function()
        if (self.localPlayer:IsInCombat()) then
            self:SetOpacity(self:GetOpacity() + 0.02);
            if (self:GetOpacity() >= 1.0) then
                self:SetWantsUpdates(false);
            end
        else
            self:SetOpacity(self:GetOpacity() - 0.02);
            if (self:GetOpacity() <= 0) then
                self:SetWantsUpdates(false);
            end
        end
    end
	

    self.HunterFocusDisplay = Turbine.Gameplay.LocalPlayer.GetInstance():GetClassAttributes();
    self.HunterFocusDisplay.FocusChanged = function(sender, args)

		local _current_focus = self.HunterFocusDisplay:GetFocus();
        self.Focus_label:SetText(_current_focus)

		if (_current_focus >= 9) then
			self.Focus_1_child:SetBackColor(options["pip_9_color"])
			self.Focus_2_child:SetBackColor(options["pip_9_color"])
			self.Focus_3_child:SetBackColor(options["pip_9_color"])
			self.Focus_4_child:SetBackColor(options["pip_9_color"])
			self.Focus_5_child:SetBackColor(options["pip_9_color"])
			self.Focus_6_child:SetBackColor(options["pip_9_color"])
			self.Focus_7_child:SetBackColor(options["pip_9_color"])
			self.Focus_8_child:SetBackColor(options["pip_9_color"])
			self.Focus_9_child:SetBackColor(options["pip_9_color"])
		elseif (_current_focus == 8) then
			self.Focus_1_child:SetBackColor(options["pip_8_color"])
			self.Focus_2_child:SetBackColor(options["pip_8_color"])
			self.Focus_3_child:SetBackColor(options["pip_8_color"])
			self.Focus_4_child:SetBackColor(options["pip_8_color"])
			self.Focus_5_child:SetBackColor(options["pip_8_color"])
			self.Focus_6_child:SetBackColor(options["pip_8_color"])
			self.Focus_7_child:SetBackColor(options["pip_8_color"])
			self.Focus_8_child:SetBackColor(options["pip_8_color"])
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_focus == 7) then
			self.Focus_1_child:SetBackColor(options["pip_7_color"])
			self.Focus_2_child:SetBackColor(options["pip_7_color"])
			self.Focus_3_child:SetBackColor(options["pip_7_color"])
			self.Focus_4_child:SetBackColor(options["pip_7_color"])
			self.Focus_5_child:SetBackColor(options["pip_7_color"])
			self.Focus_6_child:SetBackColor(options["pip_7_color"])
			self.Focus_7_child:SetBackColor(options["pip_7_color"])
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_focus == 6) then
			self.Focus_1_child:SetBackColor(options["pip_6_color"])
			self.Focus_2_child:SetBackColor(options["pip_6_color"])
			self.Focus_3_child:SetBackColor(options["pip_6_color"])
			self.Focus_4_child:SetBackColor(options["pip_6_color"])
			self.Focus_5_child:SetBackColor(options["pip_6_color"])
			self.Focus_6_child:SetBackColor(options["pip_6_color"])
			self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_focus == 5) then
			self.Focus_1_child:SetBackColor(options["pip_5_color"])
			self.Focus_2_child:SetBackColor(options["pip_5_color"])
			self.Focus_3_child:SetBackColor(options["pip_5_color"])
			self.Focus_4_child:SetBackColor(options["pip_5_color"])
			self.Focus_5_child:SetBackColor(options["pip_5_color"])
			self.Focus_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_focus == 4) then
			self.Focus_1_child:SetBackColor(options["pip_4_color"])
			self.Focus_2_child:SetBackColor(options["pip_4_color"])
			self.Focus_3_child:SetBackColor(options["pip_4_color"])
			self.Focus_4_child:SetBackColor(options["pip_4_color"])
			self.Focus_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_focus == 3) then
			self.Focus_1_child:SetBackColor(options["pip_3_color"])
			self.Focus_2_child:SetBackColor(options["pip_3_color"])
			self.Focus_3_child:SetBackColor(options["pip_3_color"])
			self.Focus_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_focus == 2) then
			self.Focus_1_child:SetBackColor(options["pip_2_color"])
			self.Focus_2_child:SetBackColor(options["pip_2_color"])
			self.Focus_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (_current_focus == 1) then
			self.Focus_1_child:SetBackColor(options["pip_1_color"])
			self.Focus_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		else
			self.Focus_1_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_5_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_6_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_7_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_8_child:SetBackColor(Turbine.UI.Color.Black)
			self.Focus_9_child:SetBackColor(Turbine.UI.Color.Black)
		end
    end
	self.HunterFocusDisplay.FocusChanged();


    -- Window Movement --
	self.moveControl = Turbine.UI.Control()
	self.moveControl:SetParent(self)
	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
	self.moveControl:SetMouseVisible(options["enableMovement"])
	self.moveControl:SetZOrder(3)
	self.moveControl.MouseDown = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = true	
			self.dragStartX = args.X
			self.dragStartY = args.Y
		end
	end
	
	self.moveControl.MouseMove = function( sender, args )
		if self.dragging then
			local x,y = self:GetPosition()	
			x = x + ( args.X - self.dragStartX )
			y = y + ( args.Y - self.dragStartY )	
			self:SetPosition( x, y )	
		end
	end
	
	self.moveControl.MouseUp = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = false
            options["xPos"] = self:GetLeft()
			options["yPos"] = self:GetTop()
		end
	end
end


-- Update elements after options have been modified --
function FocusWindow:UpdateElements()

	self:SetSize(options["focusBarLenght"] * 9 + options["focusBarGap"] * 8, options["focusBarHeight"] + 20)

    self.Focus_label:SetSize(options["focusBarHeight"] + 50, options["focusBarHeight"] + 20)
	self.Focus_label:SetPosition((self:GetWidth() / 2) - (self.Focus_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Focus_label:GetHeight() / 2))

	self.Focus_1_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Focus_1_parent:GetHeight() / 2))
	self.Focus_1_child:SetSize(self.Focus_1_parent:GetWidth() - 2, self.Focus_1_parent:GetHeight() - 2)

	self.Focus_2_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_2_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]), (self:GetHeight() / 2) - (self.Focus_2_parent:GetHeight() / 2))
	self.Focus_2_child:SetSize(self.Focus_2_parent:GetWidth() - 2, self.Focus_2_parent:GetHeight() - 2)

	self.Focus_3_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_3_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 2, (self:GetHeight() / 2) - (self.Focus_3_parent:GetHeight() / 2))
	self.Focus_3_child:SetSize(self.Focus_3_parent:GetWidth() - 2, self.Focus_3_parent:GetHeight() - 2)

	self.Focus_4_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_4_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 3, (self:GetHeight() / 2) - (self.Focus_4_parent:GetHeight() / 2))
	self.Focus_4_child:SetSize(self.Focus_4_parent:GetWidth() - 2, self.Focus_4_parent:GetHeight() - 2)

	self.Focus_5_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_5_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 4, (self:GetHeight() / 2) - (self.Focus_5_parent:GetHeight() / 2))
	self.Focus_5_child:SetSize(self.Focus_5_parent:GetWidth() - 2, self.Focus_5_parent:GetHeight() - 2)

	self.Focus_6_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_6_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 5, (self:GetHeight() / 2) - (self.Focus_6_parent:GetHeight() / 2))
	self.Focus_6_child:SetSize(self.Focus_6_parent:GetWidth() - 2, self.Focus_6_parent:GetHeight() - 2)

	self.Focus_7_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_7_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 6, (self:GetHeight() / 2) - (self.Focus_7_parent:GetHeight() / 2))
	self.Focus_7_child:SetSize(self.Focus_7_parent:GetWidth() - 2, self.Focus_7_parent:GetHeight() - 2)

	self.Focus_8_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_8_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 7, (self:GetHeight() / 2) - (self.Focus_8_parent:GetHeight() / 2))
	self.Focus_8_child:SetSize(self.Focus_8_parent:GetWidth() - 2, self.Focus_8_parent:GetHeight() - 2)

	self.Focus_9_parent:SetSize(options["focusBarLenght"], options["focusBarHeight"])
    self.Focus_9_parent:SetPosition((options["focusBarLenght"] + options["focusBarGap"]) * 8, (self:GetHeight() / 2) - (self.Focus_9_parent:GetHeight() / 2))
	self.Focus_9_child:SetSize(self.Focus_9_parent:GetWidth() - 2, self.Focus_9_parent:GetHeight() - 2)

	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
end


FocusWindowClass = FocusWindow();