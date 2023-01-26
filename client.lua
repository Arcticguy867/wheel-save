Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
		xPlayer = GetPlayerPed(-1)
        if IsPedInAnyVehicle(xPlayer, false) then
			if GetIsTaskActive(xPlayer,2) then
				voertuig = GetVehiclePedIsUsing(xPlayer)
				angle = GetVehicleSteeringAngle(voertuig)
				Citizen.Wait(100)
				SetVehicleSteeringAngle(voertuig, angle)
			end

        end
    end
end)