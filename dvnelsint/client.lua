Citizen.CreateThread(function()
    while true do
        Wait(3000)

        local ped = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(ped, false)

        if IsPedInAnyVehicle(ped, false) and GetPedInVehicleSeat(vehicle, -1) == ped then
            local cooldown = true
            Wait(5000) -- You can change the cooldown there.
            if cooldown then
                if not IsPedInAnyVehicle(ped, false) then   
                    DeleteVehicle(vehicle)
                    print("deleted last vehicle")
                end
            end
        else
            cooldown = false
        end
    end
end)
