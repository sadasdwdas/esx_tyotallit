ESX = exports['es_extended']:getSharedObject()

local playerJob = nil

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(100)
    end

    updatePlayerJob()
    createNPCs()
    
    Citizen.CreateThread(function()
        while true do
            updatePlayerJob()
            Citizen.Wait(30000)
        end
    end)
end)

function updatePlayerJob()
    ESX.PlayerData = ESX.GetPlayerData()
    playerJob = ESX.PlayerData.job and ESX.PlayerData.job.name or nil
end

function createNPCs()
    for jobName, jobData in pairs(Config.Jobs) do
        for _, pos in ipairs(jobData.Positions) do
            local pedModel = jobData.Ped

            RequestModel(pedModel)
            while not HasModelLoaded(pedModel) do
                Wait(1)
            end

            local npc = CreatePed(4, pedModel, pos.x, pos.y, pos.z - 1.0, pos.w, false, true)
            SetEntityAsMissionEntity(npc, true, true)
            SetBlockingOfNonTemporaryEvents(npc, true)
            TaskStartScenarioInPlace(npc, jobData.Scenario, 0, true)
            
            SetPedCanRagdoll(npc, false)
            SetPedCanRagdollFromPlayerImpact(npc, false)
            SetPedDiesWhenInjured(npc, false)
            SetPedCanBeTargetted(npc, false)
            SetPedCanBeTargettedByPlayer(npc, PlayerId(), false)
            ClearPedTasks(npc)
            FreezeEntityPosition(npc, true)

            exports.ox_target:addLocalEntity(npc, {
                {
                    name = 'vehicle_menu_' .. jobName,
                    label = jobData.Label,
                    icon = 'fa-solid fa-car',
                    onSelect = function()
                        openVehicleMenu(jobName, jobData)
                    end,
                    canInteract = function(entity, distance, coords, name)
                        return playerJob == jobName
                    end
                }
            })
        end
    end
end

function openVehicleMenu(jobName, jobData)
    local options = {}

    for vehicleLabel, vehicleData in pairs(jobData.Vehicles) do
        table.insert(options, {
            title = vehicleLabel,
            onSelect = function()
                spawnVehicle(jobData.SpawnPosition, vehicleData.model)
            end
        })
    end

    lib.registerContext({
        id = jobName .. '_vehicle_menu',
        title = jobData.Label,
        options = options
    })

    lib.showContext(jobName .. '_vehicle_menu')
end

function spawnVehicle(spawnPos, model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(1)
    end

    local vehicle = CreateVehicle(model, spawnPos.x, spawnPos.y, spawnPos.z, spawnPos.w, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
end

Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerVeh = GetVehiclePedIsIn(playerPed, false)
        local playerCoords = GetEntityCoords(playerPed)
        local sleep = true

        for jobName, jobData in pairs(Config.Jobs) do
            local delPos = jobData.DeleteVehiclePosition

            if playerJob == jobName then
                if DoesEntityExist(playerVeh) and #(playerCoords - vector3(delPos.x, delPos.y, delPos.z)) < 5.0 then
                    sleep = false
                    lib.showTextUI('[E] - talleta ajoneuvo')
                    if IsControlJustReleased(0, 38) then -- E key
                        ESX.Game.DeleteVehicle(playerVeh)
                    end
                elseif not DoesEntityExist(playerVeh) and #(playerCoords - vector3(delPos.x, delPos.y, delPos.z)) < 5.0 then
                    lib.showTextUI('[E] - talleta ajoneuvo')
                else
                    lib.hideTextUI()
                end
            end
        end

        if sleep then
            Wait(500)
        else
            Wait(0)
        end
    end
end)
