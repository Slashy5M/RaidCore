RaidCore.Commands.Register('announce', 'Annonce à tous les joueurs', function(source, args)
    local msg = table.concat(args, ' ')
    if msg == '' then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'RaidCore',
            description = 'Utilisation: /announce [message]',
            type = 'error'
        })
        return
    end

    TriggerClientEvent('ox_lib:notify', -1, {
        title = 'Annonce',
        description = msg,
        type = 'inform'
    })
end)