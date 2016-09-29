--[[	Author: d2imba
		Date:	09.05.2015	]]

function my_modifier:DeclareFunctions()
    local funcs = {
        MODIFIER_PROPERTY_ABSORB_SPELL --Linken's Sphere trigger.
    }
    return funcs
end


function my_modifier:GetAbsorbSpell(keys)
    local hAbility = self:GetAbility()
    if hAbility:IsCooldownReady() then
    --your cool effect here.
    hAbility:StartCooldown(hAbility:GetCooldown(hAbility:GetLevel()))
    return 1
    end
    return false
end
