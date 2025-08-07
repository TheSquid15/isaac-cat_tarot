local CatTarot = RegisterMod("CatTarot", 1)

function CatTarot:OnUseCard(card, player, flags)
    local skipCards = {
        [Card.CARD_CHAOS] = true,
        [Card.CARD_CRACKED_KEY] = true,
        [Card.CARD_AFFINITY] = true,
    }

    if not skipCards[card] then
        Isaac.ShowGiantBook("The " .. Isaac.GetCardName(card), "", nil)
    end
end

CatTarot:AddCallback(ModCallbacks.MC_USE_CARD, CatTarot.OnUseCard)