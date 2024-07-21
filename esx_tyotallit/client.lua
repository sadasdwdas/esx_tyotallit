ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    for jobName, garages in pairs(Config.Jobs) do
        for _, data in ipairs(garages) do
            for _, pos in ipairs(data.Positions) do
                -- Luo NPC ja aseta skenaario
                local npcPed = CreatePed(4, data.Ped, pos.x, pos.y, pos.z, pos.w, false, true)
                SetEntityAsMissionEntity(npcPed, true, true)
                SetBlockingOfNonTemporaryEvents(npcPed, true)
                TaskStartScenarioInPlace(npcPed, data.Scenario, 0, true)

                SetPedCanRagdoll(npcPed, false)
                SetPedCanRagdollFromPlayerImpact(npcPed, false)
                SetPedCanBeKnockedOffVehicle(npcPed, false)
                SetPedConfigFlag(npcPed, 185, true)
                SetPedConfigFlag(npcPed, 108, true)

                exports.ox_target:addLocalEntity(npcPed, {
                    {
                        name = 'vehicle:take',
                        icon = 'fas fa-car',
                        label = data.Label,
                        onSelect = function()
                            ESX.TriggerServerCallback('checkJobPermission', function(hasPermission)
                                if hasPermission then
                                    local vehicles = data.Vehicles
                                    local elements = {}
                                    for label, vehicle in pairs(vehicles) do
                                        table.insert(elements, {
                                            title = label,
                                            description = 'Ota ajoneuvo: ' .. label,
                                            event = 'vehicle:spawn',
                                            args = {
                                                model = vehicle.model,
                                                spawnPos = data.SpawnPosition,
                                                plate = Config.Jobs[jobName].CustomPlate,
                                                livery = vehicle.livery
                                            }
                                        })
                                    end

                                    lib.registerContext({
                                        id = 'vehicle_menu',
                                        title = 'Valitse ajoneuvo',
                                        options = elements
                                    })

                                    lib.showContext('vehicle_menu')
                                else
                                    ESX.ShowNotification('Sinulla ei ole oikeutta tehdä tätä')
                                end
                            end, jobName)
                        end,
                        canInteract = function(entity)
                            return entity == npcPed and ESX.PlayerData.job.name == jobName
                        end
                    }
                })

                Citizen.CreateThread(function()
                    local showing = false
                    while true do
                        Citizen.Wait(0)
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local inVehicle = IsPedInAnyVehicle(ped, false)
                        local dist = #(pos - vector3(data.DeleteVehiclePosition.x, data.DeleteVehiclePosition.y, data.DeleteVehiclePosition.z))

                        if dist < 10.0 and inVehicle then
                            ESX.TriggerServerCallback('checkJobPermission', function(hasPermission)
                                if hasPermission then
                                    if not showing then
                                        lib.showTextUI('[E] - talleta ajoneuvo')
                                        showing = true
                                    end

                                    if IsControlJustReleased(0, 38) then -- E-näppäin
                                        local vehicle = GetVehiclePedIsIn(ped, false)
                                        if vehicle then
                                            DeleteVehicle(vehicle)
                                            ESX.UI.Menu.CloseAll()
                                            lib.hideTextUI()
                                            showing = false
                                        end
                                    end
                                else
                                    if showing then
                                        lib.hideTextUI()
                                        showing = false
                                    end
                                end
                            end, jobName)
                        else
                            if showing then
                                lib.hideTextUI()
                                showing = false
                            end
                        end
                    end
                end)
            end
        end
    end
end)

RegisterNetEvent('vehicle:spawn')
AddEventHandler('vehicle:spawn', function(data)
    local model = data.model
    local coords = data.spawnPos
    local plate = data.plate
    local livery = data.livery

    ESX.Game.SpawnVehicle(model, vector3(coords.x, coords.y, coords.z), coords.w, function(vehicle)
        SetVehicleNumberPlateText(vehicle, plate)
        SetVehicleLivery(vehicle, livery)
        exports.ox_fuel:SetFuel(vehicle, 100.0)
    end)
end)
