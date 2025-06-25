local QBCore = exports['qb-core']:GetCoreObject()

local function IsRestrictedVehicle(vehicle)
    local model = GetEntityModel(vehicle)
    for job, data in pairs(Config.JobVehicles) do
        for _, allowedModel in ipairs(data.vehicles) do
            if model == allowedModel then
                return job
            end
        end
    end
    return nil
end

local function TeleportToLeftOfVehicle(ped, vehicle)
    local offset = GetOffsetFromEntityInWorldCoords(vehicle, -2.0, 0.0, 0.0)
    SetEntityCoords(ped, offset.x, offset.y, offset.z)
end

CreateThread(function()
    while true do
        Wait(1000) -- Check every second

        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)

        if vehicle and DoesEntityExist(vehicle) and GetPedInVehicleSeat(vehicle, -1) == ped then
            local PlayerData = QBCore.Functions.GetPlayerData()
            if PlayerData and PlayerData.job then
                local job = PlayerData.job.name
                local restrictedJob = IsRestrictedVehicle(vehicle)

                if restrictedJob and restrictedJob ~= job then
                    TaskLeaveVehicle(ped, vehicle, 0)
                    Wait(500)
                    TeleportToLeftOfVehicle(ped, vehicle)

                    -- Send QBCore notification
                    QBCore.Functions.Notify("You are not authorized to use this vehicle.", "error")
                end
            end
        end
    end
end)
