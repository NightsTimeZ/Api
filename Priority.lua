local Priority = {Recently = nil}
local DataPriority = {}
local Priority_Count = 1
Priority.new = function(name)
    local IDPri = {
        Name = name,
        PriorityId = Priority_Count,
        IsActive = false,
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
Priority.canactive = function(name)
    local myid = Priority.get(name).PriorityId
    for i,v in ipairs(DataPriority) do 
        if v.PriorityId < myid then 
            if v.IsActive == true then 
                return false
            end
        end
        return true
    end
end
Priority.clear = function()
    for i,v in ipairs(DataPriority) do 
        v.IsActive = false
    end
end

return Priority
