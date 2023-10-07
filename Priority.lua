local Priority = {Recently = nil}
local DataPriority = {}
local Priority_Count = 1
Priority.new = function(name,clip)
    local IDPri = {
        Name = name,
        PriorityId = Priority_Count,
        IsActive = false, -- 1 false | 2 only clip | 3 real true
        RequireClip = clip
    }
    table.insert(DataPriority,IDPri)
    Priority_Count = Priority_Count + 1
    table.sort(DataPriority,function(a,b)
        return a.PriorityId < b.PriorityId
    end)
    return Priority
end
Priority.get = function(name)
    for i,v in ipairs(DataPriority) do 
        if v.Name == name then 

            local data = {
                CanActive = function()
                    for i,s in ipairs(DataPriority) do 
                        if s.Name == name and s.IsActive then return true end
                        if s.IsActive and s.Name ~= name then 
                            return false
                        end
                    end
                    return true
                end,
                set = function(ww)
                    v.IsActive = ww
                    if ww then 
                        Priority.Recently = name
                    else
                        Priority.Recently = nil
                    end
                end
            }
            return data
        end
    end
end

Priority.GetClip = function()
    for i,v in ipairs(DataPriority) do 
        if v.RequireClip == true then 
            return v.IsActive
        end
    end
end

Priority.clear = function()
    for i,v in ipairs(DataPriority) do 
        v.IsActive = false
    end
end

return Priority

-- Priority.new('1').new("2").new('3')


-- task.spawn(function()
--     while task.wait(0.4) do 
--         print("--------",Priority.Recently)
--         if Priority.get("1").CanActive() then 
--             print(1)
--         end
--         if Priority.get("2").CanActive() then 
--             print(2)
--         end
--         if Priority.get("3").CanActive() then 
--             print(3)
--         end
--     end
-- end)

-- task.wait(1)
-- print("pri to 2")
-- Priority.get("1").set(true)
-- Priority.get("2").set(true)
-- task.wait(1)
-- print("pri to 1")
-- Priority.get("1").set(false)
-- Priority.get("2").set(false)
