local module = {}

module.name = 'Example Module'
module.active = true

function module.init()
    print('[RaidCore] Chargement du module : ' .. module.name)

    RegisterCommand('raidexample', function(source, args)
        print('[RaidCore] /raidexample exécuté par :', source)
    end, true)
end

return module