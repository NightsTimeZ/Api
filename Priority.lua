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
            return v
        end
    end
end
Priority.set = function(name,ww)
    for i,v in ipairs(DataPriority) do 
        if v.Name == name then 
            v.IsActive = ww
            if ww then 
                Priority.Recently = name
            else
                Priority.Recently = nil
            end
            
            break
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
Priority.canactive = function(name)
    local myid = Priority.get(name).PriorityId
    for i,v in ipairs(DataPriority) do 
        if v.Name ~= name then 
            local He = v.PriorityId
            local HeSet = v.IsActive
            if (He < myid or He > myid) and HeSet == 1 then 
                return true
            end
            if He < myid and HeSet == 2 then 
                return true
            end
        end
    end
    return true
end
Priority.clear = function()
    for i,v in ipairs(DataPriority) do 
        v.IsActive = 1
    end
end


return Priority
