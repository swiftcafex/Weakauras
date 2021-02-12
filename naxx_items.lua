function()
    
    -- 暗抗药水
    local kShadowResist = 13459
    -- 自然抗
    local kNatureResist = 13458
    -- 冰抗
    local kIceResist = 13456
    
    --Value Based
    
    local itemList = {kShadowResist, kNatureResist, kIceResist }
    
    local itemTable = {}    
    itemTable[kShadowResist] = 15
    itemTable[kNatureResist] = 10
    itemTable[kIceResist] = 15    
    
    
    local reuslt = ""
    result = ""
    
    for i, val in ipairs(itemList) do
        
        local itemCount =  GetItemCount(val);
        local item = Item:CreateFromItemID(val)
        local name = item:GetItemName() 
        
        local necessaryCount = itemTable[val]
        
        if (itemCount >= necessaryCount) 
        then
            local text = string.format("%s: %s/%s\n", name, itemCount, necessaryCount)
            result = result .. text
        else
            local text = string.format("**%s: %s/%s\n", name, itemCount, necessaryCount)
            result = result .. text            
        end
        
    end
    
    
    return result
    
end

