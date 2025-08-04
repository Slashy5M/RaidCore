RaidCore.Modules = {}

local function GetDirFiles(path)
    local files = {}
    local handle = io.popen('dir "resources/' .. GetCurrentResourceName() .. '/' .. path .. '" /b')
    if handle then
        for file in handle:lines() do
            if file:sub(-4) == '.lua' then
                files[#files + 1] = file
            end
        end
        handle:close()
    end
    return files
end

for _, file in ipairs(GetDirFiles('modules')) do
    local chunk = LoadResourceFile(GetCurrentResourceName(), 'modules/' .. file)
    local module = load(chunk, file)()
    if module and module.active then
        RaidCore.Modules[file] = module
        if module.init then
            module.init()
        end
    end
end