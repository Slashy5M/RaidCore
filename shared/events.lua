RaidCore.Events = {
    RegisterNet = function(eventName, handler)
        RegisterNetEvent(eventName)
        AddEventHandler(eventName, handler)
    end,

    ShowNotification = function(source, message)
        TriggerClientEvent('ox_lib:notify', source, { description = message })
    end
}