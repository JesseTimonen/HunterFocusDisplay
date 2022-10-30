-- Import Turbine/Lotro base libraries --
import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI.Lotro";


-- Import utility scripts --
import "HunterFocusDisplay.Scripts.Utility.Class";
import "HunterFocusDisplay.Scripts.Utility.Type";
import "HunterFocusDisplay.Scripts.Utility.RadioButton";


-- Import scripts that are required for other scripts to work --
import "HunterFocusDisplay.Scripts.Notification";
import "HunterFocusDisplay.Scripts.SaveLoad";
import "HunterFocusDisplay.Scripts.Init";


-- Make sure plugin loads only for hunters --
if (Turbine.Gameplay.LocalPlayer.GetInstance():GetClass() ~= Turbine.Gameplay.Class.Hunter) then
    Scripts.notification("This plugin will only work for hunters! Wrong class detected, therefore the plugin has been disabled.");
    return;
end


-- Import plugin activation --
import "HunterFocusDisplay.Scripts.Activation";


-- Import color picker --
import "HunterFocusDisplay.Scripts.ColorPicker";


-- Import main functionality --
import "HunterFocusDisplay.Scripts.Main";
import "HunterFocusDisplay.Scripts.Options";