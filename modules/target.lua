RaidCore.Target = {
    AddZone = function(id, options)
        exports.ox_target:addBoxZone({
            coords = options.coords,
            size = options.size,
            rotation = options.rotation,
            debug = RaidCore.Config.Debug,
            options = {
                {
                    label = options.label,
                    event = options.event,
                    icon = options.icon or 'fas fa-circle'
                }
            }
        })
    end
}