ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

----------------------------------- Création du menu ----------------------------

RMenu.Add('touches', 'main', RageUI.CreateMenu("Menu Aide", "Touches du serveur"))

Citizen.CreateThread(function()
    while true do 
        RageUI.IsVisible(RMenu:Get('touches', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("~g~Aide Touche", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Téléphone", nil, {RightLabel = "F1"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Gestionnaire Carte Sim", nil, {RightLabel = "F2"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Emotes", nil, {RightLabel = "F3"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Intéraction", nil, {RightLabel = "F5"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Job", nil, {RightLabel = "F6"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Menu Gang / Organisation", nil, {RightLabel = "F7"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Lever les mains", nil, {RightLabel = "²"}, true, function(Hovered, Active, Selected)
            end) 
            RageUI.ButtonWithStyle("~b~Arrêter l'animation", nil, {RightLabel = "X"}, true, function(Hovered, Active, Selected)
            end) 
            RageUI.ButtonWithStyle("~b~Pointer du Doigt", nil, {RightLabel = "B"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~o~Aide Chat", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~p~Report ", nil, {RightLabel = "/report"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~p~Twitter", nil, {RightLabel = "/twt"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~p~Anonyme", nil, {RightLabel = "/ano"}, true, function(Hovered, Active, Selected)
            end)
        end, function()
        end)
        Citizen.Wait(0)
    end
end)

----------------------------------- Open menu ----------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1,344) then 
            RageUI.Visible(RMenu:Get('touches', 'main'), not RageUI.Visible(RMenu:Get('touches', 'main')))
        end
    end
end)