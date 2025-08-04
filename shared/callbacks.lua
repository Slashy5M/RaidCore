RaidCore.Callbacks = {
    -- Client → Serveur
    Register = function(name, cb)
        lib.callback.register(name, cb)
    end,

    -- Serveur → Client
    Trigger = function(playerId, name, cb, ...)
        lib.callback.triggerClient(playerId, name, cb, ...)
    end
}