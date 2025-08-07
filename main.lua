local CatTarot = RegisterMod("CatTarot", 1)

function CatTarot:OnUseCard(card, player, flags)
    print("Hello Isaac!")
end

CatTarot:AddCallback(ModCallbacks.MC_USE_CARD, CatTarot.OnUseCard)