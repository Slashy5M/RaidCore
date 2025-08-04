RaidCore.DB = {
    Query = function(query, params, cb)
        exports.oxmysql:query(query, params, function(result)
            if cb then cb(result) end
        end)
    end,

    GetPlayerData = function(playerId, cb)
        RaidCore.DB.Query('SELECT * FROM users WHERE identifier = ?', { GetPlayerIdentifier(playerId) }, cb)
    end
}