RaidCore.Commands = {}

function RaidCore.Commands.Register(name, help, cb)
    RegisterCommand(name, function(source, args, rawCommand)
        cb(source, args, rawCommand)
    end, true)

    RaidCore.Utils.DebugPrint(('Commande /%s enregistrée'):format(name))
end