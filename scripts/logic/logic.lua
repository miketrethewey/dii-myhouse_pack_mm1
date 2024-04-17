function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

function not_has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return not has(item)
    else
        return count < amount
    end
end

function artifactCheck(house)
    house = house or "empty"
    ret = "empty"
    if has("artifact_book") or
        has("artifact_photo") or
        has("artifact_teddybear") then
        ret = "overgrown"
    end
    if has("artifact_pop") and
        has("artifact_milkshake") and
        has("artifact_ring") and
        has("artifact_tuna") and
        has("artifact_frisbee") and
        has("artifact_ornament") and
        has("artifact_babybottle") and
        has("artifact_baseball") then
        ret = "second"
    end
    if has("artifact_crayons") and
        has("artifact_rubberduck") and
        has("artifact_medication") and
        has("artifact_gamecontroller") and
        has("artifact_snugs") and
        has("artifact_pumpkin") and
        has("artifact_winebottle") and
        has("artifact_d20") then
        ret = "mirrorgasstation"
    end

    return ret == house
end
