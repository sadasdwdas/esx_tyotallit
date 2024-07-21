ESX = exports['es_extended']:getSharedObject()

ESX.RegisterServerCallback('checkJobPermission', function(source, cb, jobName)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerJob = xPlayer.getJob().name

    if playerJob == jobName then
        cb(true)
    else
        cb(false)
    end
end)
