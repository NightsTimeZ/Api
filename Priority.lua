local Priority = {Recently = nil}
local DataPriority = {}
local Priority_Count = 1
Priority.new = function(name,clip)
    local IDPri = {
        Name = name,
        PriorityId = Priority_Count,
        IsActive = 1, -- 1 false | 2 true but can rep | 3 real true
        RequireClip = clip
    }
    table.insert(DataPriority,IDPri)
    Priority_Count = Priority_Count + 1
    return Priority
end
Priority.get = function(name)
    for i,v in ipairs(DataPriority) do 
        if v.Name == name then 
            local temp = function(f)
                v.IsActive = f
                if ww then 
                    Priority.Recently = name
                else
                    Priority.Recently = nil
                end
            end
            local temp2 = function()
                local myid = v.PriorityId
                for i,v2 in ipairs(DataPriority) do 
                    if v2.Name ~= name then 
                        if v2.PriorityId < myid and v2.IsActive == 3 then 
                            return false
                        end
                        if v2.PriorityId < myid and v2.IsActive == 2 then 
                            return true
                        end
                        if v2.PriorityId > myid and v2.IsActive > 1 then 
                            return false
                        end
                    end
                end
                return true
            end
            return {data = v,set = temp,CanActive = temp2}
        end
    end
end
Priority.GetClip = function()
    for i,v in ipairs(DataPriority) do 
        if v.RequireClip == true then 
            return v.IsActive > 1
        end
    end
end
Priority.clear = function()
    Priority.Recently = nil
    for i,v in ipairs(DataPriority) do 
        v.IsActive = 1
    end
end


return Priority
