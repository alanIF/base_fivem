local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "add1" then
		vRP.teleport(425.91149902344,-978.29742431641,30.709705352783)
	elseif data == "add2" then
		vRP.teleport(375.2428894043,-594.30053710938,28.810169219971)
	elseif data == "add3" then
		vRP.teleport(220.63163757324,207.54223632813,105.47722625732)
	elseif data == "add4" then
		vRP.teleport(-202.01333618164,-1308.7989501953,31.293102264404)
	elseif data == "add5" then
		vRP.teleport(56.943622589111,-876.83715820313,30.65574836731)
	elseif data == "add6" then
		vRP.teleport(-1184.9272460938,-1509.9989013672,4.6493029594421)
	end
	ToggleActionMenu()
	TriggerEvent("ToogleBackCharacter")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOOGLE LOGIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('vrp:ToogleLoginMenu')
AddEventHandler('vrp:ToogleLoginMenu',function()
	ToggleActionMenu()
end)