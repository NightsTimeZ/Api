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
    table.sort(DataPriority,function(a,b)
        return a.PriorityId < b.PriorityId
    end)
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
            if ww > 1 then 
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
            return v.IsActive > 1
        end
    end
end
Priority.CanActive = function(name)
    local yap = false
    local lowthen = false
    local myid = Priority.get(name).PriorityId
    local not3atlow = false
    for i,v in ipairs(DataPriority) do 
        local HeSet = v.IsActive
        if v.Name == name then 
            lowthen = true  
        else
            if lowthen then 
                if HeSet == 1 or HeSet == 2 then 
                    yap = true
                end
                if HeSet == 3 then 
                    yap = false
                    break
                end
            
            else
                if HeSet == 1 then 
                    yap = true
                end
                if HeSet == 2 or HeSet == 3 then 
                    yap = false
                    break
                end
            end
        end
        
    end
    return yap
end
Priority.clear = function()
    for i,v in ipairs(DataPriority) do 
        v.IsActive = 1
    end
end


Priority.new('1').new("2").new('3')


task.spawn(function()
    while task.wait(0.4) do 
        print("--------",Priority.Recently)
        if Priority.CanActive("1") then 
            print(1)
        end
        if Priority.CanActive("2") then 
            print(2)
        end
        if Priority.CanActive("3") then 
            print(3)
        end
    end
end)

task.wait(1)
print("pri to 3")
Priority.set("2",3)
task.wait(1)
print("pri to 2")
Priority.set("2",2)
task.wait(1)
print("pri to 1")
Priority.set("2",1)
