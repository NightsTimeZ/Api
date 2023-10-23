local placeId = game.PlaceId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    ThreeWorld = true
end

task.spawn(function()
    while task.wait() do 
        pcall(function()
            for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:IsA("Model") then  
                    if v:FindFirstChild("Humanoid") and v.Name ~= v:FindFirstChild("Humanoid").DisplayName then
                        v.Name = v:FindFirstChild("Humanoid").DisplayName
                    end
                end
            end
            for _, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v:IsA("Model") then  
                    if v:FindFirstChild("Humanoid") and v.Name ~= v:FindFirstChild("Humanoid").DisplayName then
                        v.Name = v:FindFirstChild("Humanoid").DisplayName
                    end
                end
            end
        end)
    end
end)

local questdata = {}

questdata.CheckQuestBossWithFarm = function(SelectBoss)
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if OldWorld then
        if MyLevel >= 20 and NowQuest == "JungleQuest" and havemob("The Gorilla King [Lv. 25] [Boss]") then -- Gorilla King

            Bosses = "The Gorilla King [Lv. 25] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "King"

            CFrameBoss = CFrame.new(-1196.4288330078125, 6.791248798370361, -448.4755554199219)

        elseif MyLevel >= 55 and NowQuest == "BuggyQuest1" and havemob("Bobby [Lv. 55] [Boss]") then -- Bobby

            Bosses = "Bobby [Lv. 55] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Bobby"

            CFrameBoss = CFrame.new(-1097.8865966796875, 27.307741165161133, 4051.182373046875)

        elseif MyLevel >= 105 and NowQuest == "SnowQuest" and havemob("Yeti [Lv. 110] [Boss]") then -- Bobby

            Bosses = "Yeti [Lv. 110] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Yeti"

            CFrameBoss = CFrame.new(1202.99462890625, 143.6376495361328, -1550.9326171875)

        elseif MyLevel >= 130 and NowQuest == "MarineQuest2" and havemob("Vice Admiral [Lv. 130] [Boss]") then -- Bobby

            Bosses = "Vice Admiral [Lv. 130] [Boss]"

            LevelQuestBoss = 2
            NameCheckQuestBoss = "Vice"

            CFrameBoss = CFrame.new(-5087.49267578125, 98.71009826660156, 4406.0498046875)

        elseif MyLevel >= 220 and NowQuest == "PrisonerQuest" and havemob("Warden [Lv. 220] [Boss]") then -- Bobby

            Bosses = "Warden [Lv. 220] [Boss]"

            LevelQuestBoss = 1
            NameCheckQuestBoss = "t Warden"
            NameQuest = "ImpelQuest"

            CFrameQuest = CFrame.new(5190.45703125, 2.5952436923980713, 688.2589111328125)
            CFrameBoss = CFrame.new(5184.12744140625, 57.404136657714844, 829.398681640625)

        elseif MyLevel >= 230 and NowQuest == "PrisonerQuest" and havemob("Chief Warden [Lv. 230] [Boss]") then -- Bobby

            Bosses = "Chief Warden [Lv. 230] [Boss]"

            LevelQuestBoss = 2
            NameCheckQuestBoss = "Chief"
            NameQuest = "ImpelQuest"

            CFrameQuest = CFrame.new(5190.45703125, 2.5952436923980713, 688.2589111328125)
            CFrameBoss = CFrame.new(5184.12744140625, 57.404136657714844, 829.398681640625)

        elseif MyLevel >= 230 and NowQuest == "PrisonerQuest" and havemob("Swan [Lv. 240] [Boss]") then -- Bobby

            Bosses = "Swan [Lv. 240] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Swan"
            NameQuest = "ImpelQuest"

            CFrameQuest = CFrame.new(5190.45703125, 2.5952436923980713, 688.2589111328125)
            CFrameBoss = CFrame.new(5184.12744140625, 57.404136657714844, 829.398681640625)

        elseif MyLevel >= 350 and NowQuest == "MagmaQuest" and havemob("Magma Admiral [Lv. 350] [Boss]") then -- Bobby

            Bosses = "Magma Admiral [Lv. 350] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Admiral"

            CFrameBoss = CFrame.new(-5682.41064453125, 16.40520668029785, 8751.5849609375)

        elseif MyLevel >= 425 and NowQuest == "FishmanQuest" and havemob("Fishman Lord [Lv. 425] [Boss]") then -- Bobby

            Bosses = "Fishman Lord [Lv. 425] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Lord"

            CFrameBoss = CFrame.new(61347.0078125, 30.053680419921875, 1125.32177734375)

        elseif MyLevel >= 500 and NowQuest == "SkyExp1Quest" and havemob("Wysper [Lv. 500] [Boss]") then -- Bobby

            Bosses = "Wysper [Lv. 500] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Wysper"

            CFrameBoss = CFrame.new(-7811.53271484375, 5585.1279296875, -652.8221435546875)

        elseif MyLevel >= 575 and NowQuest == "SkyExp2Quest" and havemob("Thunder God [Lv. 575] [Boss]") then -- Bobby

            Bosses = "Thunder God [Lv. 575] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Thunder"

            CFrameBoss = CFrame.new(-7795.9287109375, 5605.951171875, -2231.444580078125)

        elseif MyLevel >= 675 and NowQuest == "FountainQuest" and havemob("Cyborg [Lv. 675] [Boss]") then -- Bobby

            Bosses = "Cyborg [Lv. 675] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Cyborg"

            CFrameBoss = CFrame.new(6026.85498046875, 56.75627136230469, 3911.870849609375)

        else
            Bosses = ""
        end
    elseif NewWorld then
        if MyLevel >= 750 and NowQuest == "Area1Quest" and havemob("Diamond [Lv. 750] [Boss]") then -- Bobby

            Bosses = "Diamond [Lv. 750] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Diamond"

            CFrameBoss = CFrame.new(-1768.1483154296875, 315.549560546875, -61.178192138671875)

        elseif MyLevel >= 850 and NowQuest == "Area2Quest" and havemob("Jeremy [Lv. 850] [Boss]") then -- Bobby

            Bosses = "Jeremy [Lv. 850] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Jeremy"

            CFrameBoss = CFrame.new(2035.4229736328125, 447.9889221191406, 712.2064819335938)

        elseif MyLevel >= 925 and NowQuest == "MarineQuest3" and havemob("Fajita [Lv. 925] [Boss]") then -- Bobby

            Bosses = "Fajita [Lv. 925] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Fajita"

            CFrameBoss = CFrame.new(-2123.315673828125, 89.35710144042969, -4079.322021484375)

        elseif MyLevel >= 1150 and NowQuest == "IceSideQuest" and havemob("Smoke Admiral [Lv. 1150] [Boss]") then -- Bobby

            Bosses = "Smoke Admiral [Lv. 1150] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Smoke Admiral"

            CFrameBoss = CFrame.new(-5106.25146484375, 22.789506912231445, -5341.25146484375)

        elseif MyLevel >= 1400 and NowQuest == "FrostQuest" and havemob("Awakened Ice Admiral [Lv. 1400] [Boss]") then -- Bobby

            Bosses = "Awakened Ice Admiral [Lv. 1400] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Awakened Ice Admiral"

            CFrameBoss = CFrame.new(6407.33935546875, 339.2467041015625, -6892.52099609375)

        elseif MyLevel >= 1475 and NowQuest == "ForgottenQuest" and havemob("Tide Keeper [Lv. 1475] [Boss]") then -- Bobby

            Bosses = "Tide Keeper [Lv. 1475] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Tide Keeper"

            CFrameBoss = CFrame.new(-3570.1865234375, 123.32894897460938, -11555.9072265625)

        else
            Bosses = ""
        end
    elseif ThreeWorld then
        if MyLevel >= 1550 and NowQuest == "PiratePortQuest" and havemob("Stone [Lv. 1550] [Boss]") then -- Bobby

            Bosses = "Stone [Lv. 1550] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Stone"

            CFrameBoss = CFrame.new(-1141.4222412109375, 96.33948516845703, 6993.21337890625)

        elseif MyLevel >= 1675 and NowQuest == "AmazonQuest2" and havemob("Island Empress [Lv. 1675] [Boss]") then -- Bobby

            Bosses = "Island Empress [Lv. 1675] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Island Empress"

            CFrameBoss = CFrame.new(5567.677734375, 650.8583374023438, 195.727783203125)

        elseif MyLevel >= 1750 and NowQuest == "MarineTreeIsland" and havemob("Kilo Admiral [Lv. 1750] [Boss]") then -- Bobby

            Bosses = "Kilo Admiral [Lv. 1750] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Kilo Admiral"

            CFrameBoss = CFrame.new(2915.359375, 455.9102783203125, -7375.900390625)

        elseif MyLevel >= 1875 and NowQuest == "DeepForestIsland" and havemob("Captain Elephant [Lv. 1875] [Boss]") then -- Bobby

            Bosses = "Captain Elephant [Lv. 1875] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Elephant"

            CFrameBoss = CFrame.new(-13351.3642578125, 404.9483642578125, -8570.650390625)

        elseif MyLevel >= 1950 and NowQuest == "DeepForestIsland2" and havemob("Beautiful Pirate [Lv. 1950] [Boss]") then -- Bobby

            Bosses = "Beautiful Pirate [Lv. 1950] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Beautiful"

            CFrameBoss = CFrame.new(5314.58203125, 21.594484329223633, -125.94227600097656)

        elseif MyLevel >= 2175 and NowQuest == "IceCreamIslandQuest" and havemob("Cake Queen [Lv. 2175] [Boss]") then -- Bobby

            Bosses = "Cake Queen [Lv. 2175] [Boss]"

            LevelQuestBoss = 3
            NameCheckQuestBoss = "Cake Queen"

            CFrameBoss = CFrame.new(-717.3067016601562, 380.62359619140625, -11006.7158203125)

        else
            Bosses = ""
        end
    end
end

questdata.CheckQuestBoss = function(SelectBoss)
    -- Old World
    if SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
        MonsterBoss = "Saber Expert [Lv. 200] [Boss]"

        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
    elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
        MonsterBoss = "The Saw [Lv. 100] [Boss]"

        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854)
    elseif SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
        MonsterBoss = "Greybeard [Lv. 750] [Raid Boss]"

        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666)
    elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
        MonsterBoss = "Mob Leader [Lv. 120] [Boss]"

        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043)
    elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
        MonsterBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameCheckQuestBoss = "The Gorilla King"

        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664)
    elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
        MonsterBoss = "Bobby [Lv. 55] [Boss]"
        NameCheckQuestBoss = "Bobby"

        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588)
    elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
        MonsterBoss = "Yeti [Lv. 110] [Boss]"
        NameCheckQuestBoss = "Yeti"

        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082)
    elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
        MonsterBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameCheckQuestBoss = "Vice Admiral"

        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2

        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665)
    elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
        MonsterBoss = "Warden [Lv. 175] [Boss]"
        NameCheckQuestBoss = "Warden"

        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1

        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897)
    elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
        MonsterBoss = "Chief Warden [Lv. 200] [Boss]"
        NameCheckQuestBoss = "Chief Warden"

        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2

        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897)
    elseif SelectBoss == "Swan [Lv. 225] [Boss]" then
        MonsterBoss = "Swan [Lv. 225] [Boss]"
        NameCheckQuestBoss = "Swan"

        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897)
    elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
        MonsterBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameCheckQuestBoss = "Magma Admiral"

        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309)
    elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
        MonsterBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameCheckQuestBoss = "Fishman Lord"

        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409)
    elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
        MonsterBoss = "Wysper [Lv. 500] [Boss]"
        NameCheckQuestBoss = "Wysper"

        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345)
    elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
        MonsterBoss = "Thunder God [Lv. 575] [Boss]"
        NameCheckQuestBoss = "Thunder God"

        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564)
    elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
        MonsterBoss = "Cyborg [Lv. 675] [Boss]"
        NameCheckQuestBoss = "Cyborg"

        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142)
    -- New World
    elseif SelectBoss == "Diamond [Lv. 750] [Boss]" then
        MonsterBoss = "Diamond [Lv. 750] [Boss]"
        NameCheckQuestBoss = "Diamond"

        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857)
    elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
        MonsterBoss = "Jeremy [Lv. 850] [Boss]"
        NameCheckQuestBoss = "Jeremy"

        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.66632)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.73107)
    elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
        MonsterBoss = "Fajita [Lv. 925] [Boss]"
        NameCheckQuestBoss = "Fajita"

        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.5383)
    elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
        MonsterBoss = "Don Swan [Lv. 1000] [Boss]"

        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607)
    elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MonsterBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameCheckQuestBoss = "Smoke Admiral"

        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207)
    elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MonsterBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"

        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
    elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MonsterBoss = "Darkbeard [Lv. 1000] [Raid Boss]"

        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777)
    elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
        MonsterBoss = "Order [Lv. 1250] [Raid Boss]"

        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584)
    elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MonsterBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameCheckQuestBoss = "Awakened Ice Admiral"

        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521)
    elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
        MonsterBoss = "Tide Keeper [Lv. 1475] [Boss]"
        NameCheckQuestBoss = "Tide Keeper"

        NameQuestBoss = "ForgottenQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072)

    -- Three World
    elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
        MonsterBoss = "Stone [Lv. 1550] [Boss]"
        NameCheckQuestBoss = "Stone"

        NameQuestBoss = "PiratePortQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
        MonsterBoss = "Island Empress [Lv. 1675] [Boss]"
        NameCheckQuestBoss = "Island Empress"

        NameQuestBoss = "AmazonQuest2"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MonsterBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameCheckQuestBoss = "Kilo Admiral"

        NameQuestBoss = "MarineTreeIsland"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
        MonsterBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameCheckQuestBoss = "Captain Elephant"

        NameQuestBoss = "DeepForestIsland"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MonsterBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameCheckQuestBoss = "Beautiful Pirate"

        NameQuestBoss = "DeepForestIsland2"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
        MonsterBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameCheckQuestBoss = "Cake Queen"

        NameQuestBoss = "IceCreamIslandQuest"
        LevelQuestBoss = 3

        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MonsterBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"

        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
        MonsterBoss = "Longma [Lv. 2000] [Boss]"

        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MonsterBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"

        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    elseif SelectBoss == "Dough King [Lv. 2300] [Raid Boss]" then
        MonsterBoss = "Dough King [Lv. 2300] [Raid Boss]"

        CFrameBoss = CFrame.new(-2151.82153, 149.315704, -12404.9053)
    end
end

questdata.CheckQuest = (function()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then -- Bandit
            LevelFarm = 1

            Monster = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"

            LevelQuest = 1
            NameCheckQuest = "Bandit"

            CFrameMyMon = CFrame.new(1145, 17, 1634)

            CFrameQuest = CFrame.new(1060, 17, 1547)
            VectorQuest = Vector3.new(1060, 17, 1547)
        elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
            LevelFarm = 2

            Monster = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"

            LevelQuest = 1
            NameCheckQuest = "Monkey"

            CFrameMyMon = CFrame.new(-1496, 39, 35)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
            LevelFarm = 3

            Monster = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"

            LevelQuest = 2
            NameCheckQuest = "Gorilla"

            CFrameMyMon = CFrame.new(-1237, 6, -486)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
            LevelFarm = 4

            Monster = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"

            LevelQuest = 1
            NameCheckQuest = "Pirate"

            CFrameMyMon = CFrame.new(-1115, 14, 3938)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
            LevelFarm = 5

            Monster = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"

            LevelQuest = 2
            NameCheckQuest = "Brute"

            CFrameMyMon = CFrame.new(-1145, 15, 4350)
            VectorMon = Vector3.new(-1146, 15, 4350)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
            LevelFarm = 6

            Monster = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"

            LevelQuest = 1
            NameCheckQuest = "Desert Bandit"

            CFrameMyMon = CFrame.new(932, 7, 4484)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
            LevelFarm = 7

            Monster = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"

            LevelQuest = 2
            NameCheckQuest = "Desert Officer"

            CFrameMyMon = CFrame.new(1572, 10, 4373)
            VectorMon = Vector3.new(1572, 10, 4373)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
            LevelFarm = 8

            Monster = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"

            LevelQuest = 1
            NameCheckQuest = "Snow Bandits"

            CFrameMyMon = CFrame.new(1289, 150, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
            LevelFarm = 9

            Monster = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"

            LevelQuest = 2
            NameCheckQuest = "Snowman"

            CFrameMyMon = CFrame.new(1289, 150, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
            LevelFarm = 10

            Monster = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"

            LevelQuest = 1
            NameCheckQuest = "Chief Petty Officer"

            CFrameMyMon = CFrame.new(-4855, 23, 4308)
            VectorMon = Vector3.new(-4855, 23, 4308)

            CFrameQuest = CFrame.new(-5036, 29, 4325)
            VectorQuest = Vector3.new(-5036, 29, 4325)
        elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
            LevelFarm = 11

            Monster = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"

            LevelQuest = 1
            NameCheckQuest = "Sky Bandit"

            CFrameMyMon = CFrame.new(-4981, 278, -2830)
            VectorMon = Vector3.new(-4981, 278, -2830)

            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
            LevelFarm = 12

            Monster = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"

            LevelQuest = 2
            NameCheckQuest = "Dark Master"

            CFrameMyMon = CFrame.new(-5250, 389, -2272)
            VectorMon = Vector3.new(-5250, 389, -2272)

            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
            LevelFarm = 13

            Monster = "Prisoner [Lv. 190]"
            NameQuest = "PrisonerQuest"

            LevelQuest = 1
            NameCheckQuest = "8 Prisoners"

            CFrameMyMon = CFrame.new(5411, 96, 690)
            VectorMon = Vector3.new(5411, 96, 690)

            CFrameQuest = CFrame.new(5308, 2, 474)
            VectorQuest = Vector3.new(5308, 2, 474)
        elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
            LevelFarm = 14

            Monster = "Dangerous Prisoner [Lv. 210]"
            NameQuest = "PrisonerQuest"

            LevelQuest = 2
            NameCheckQuest = "Dangerous Prisoner"

            CFrameMyMon = CFrame.new(5411, 96, 690)
            VectorMon = Vector3.new(5411, 96, 690)

            CFrameQuest = CFrame.new(5308, 2, 474)
            VectorQuest = Vector3.new(5308, 2, 474)
        elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
            LevelFarm = 15

            Monster = "Toga Warrior [Lv. 250]"
            NameQuest = "ColosseumQuest"

            LevelQuest = 1
            NameCheckQuest = "Toga Warrior"

            CFrameMyMon = CFrame.new(-1641.4344482421875, 7.415142059326172, -2864.462646484375)

            CFrameQuest = CFrame.new(-1576, 8, -2985)
            VectorQuest = Vector3.new(-1576, 8, -2985)
        elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
            LevelFarm = 16

            Monster = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"

            LevelQuest = 2
            NameCheckQuest = "Gladiato"

            CFrameMyMon = CFrame.new(-1385.5233154296875, 7.468349456787109, -3163.066650390625)
            VectorMon = Vector3.new(-1278, 8, -3240)

            CFrameQuest = CFrame.new(-1576, 8, -2985)
            VectorQuest = Vector3.new(-1576, 8, -2985)
        elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
            LevelFarm = 17

            Monster = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"

            LevelQuest = 1
            NameCheckQuest = "Military Soldier"

            CFrameMyMon = CFrame.new(-5408, 11, 8447)
            VectorMon = Vector3.new(-5408, 11, 8447)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
            LevelFarm = 18

            Monster = "Military Spy [Lv. 325]"
            NameQuest = "MagmaQuest"

            LevelQuest = 2
            NameCheckQuest = "Military Spy"

            CFrameMyMon = CFrame.new(-5815, 84, 8820)
            VectorMon = Vector3.new(-5815, 84, 8820)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
            LevelFarm = 19

            Monster = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"

            LevelQuest = 1
            NameCheckQuest = "Fishman Warrior"

            CFrameMyMon = CFrame.new(60859, 19, 1501)
            VectorMon = Vector3.new(60859, 19, 1501)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)
        elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
            LevelFarm = 20

            Monster = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"

            LevelQuest = 2
            NameCheckQuest = "Fishman Commando"

            CFrameMyMon = CFrame.new(61891, 19, 1470)
            VectorMon = Vector3.new(61891, 19, 1470)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)
        elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
            LevelFarm = 21

            Monster = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"

            LevelQuest = 1
            NameCheckQuest = "God's Guards"

            CFrameMyMon = CFrame.new(-4698, 845, -1912)
            VectorMon = Vector3.new(-4698, 845, -1912)

            CFrameQuest = CFrame.new(-4722, 845, -1954)
            VectorQuest = Vector3.new(-4722, 846, -1954)
        elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
            LevelFarm = 22

            Monster = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"

            LevelQuest = 2
            NameCheckQuest = "Shandas"

            CFrameMyMon = CFrame.new(-7685, 5567, -502)
            VectorMon = Vector3.new(-7685, 5567, -502)

            CFrameQuest = CFrame.new(-7862, 5546, -380)
            VectorQuest = Vector3.new(-7862, 5546, -380)
        elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
            LevelFarm = 23

            Monster = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"

            LevelQuest = 1
            NameCheckQuest = "Royal Squad"

            CFrameMyMon = CFrame.new(-7670, 5607, -1460)
            VectorMon = Vector3.new(-7670, 5607, -1460)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
            LevelFarm = 24

            Monster = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"

            LevelQuest = 2
            NameCheckQuest = "Royal Soldier"

            CFrameMyMon = CFrame.new(-7828, 5607, -1744)
            VectorMon = Vector3.new(-7828, 5607, -1744)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
            LevelFarm = 25

            Monster = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"

            LevelQuest = 1
            NameCheckQuest = "Galley Pirate"

            CFrameMyMon = CFrame.new(5589, 45, 3996)
            VectorMon = Vector3.new(5589, 45, 3996)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        elseif MyLevel >= 650 then -- Galley Captain
            LevelFarm = 26

            Monster = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"

            LevelQuest = 2
            NameCheckQuest = "Galley Captain"

            CFrameMyMon = CFrame.new(5649, 39, 4936)
            VectorMon = Vector3.new(5649, 39, 4936)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        end
    end
    if NewWorld then
        if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
            LevelFarm = 1

            Monster = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"

            LevelQuest = 1
            NameCheckQuest = "Raider"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMyMon = CFrame.new(-746, 39, 2390)
            VectorMon = Vector3.new(-746, 39, 2389)
        elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
            LevelFarm = 2

            Monster = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"

            LevelQuest = 2
            NameCheckQuest = "Mercenary"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMyMon = CFrame.new(-874, 141, 1312)
            VectorMon = Vector3.new(-874, 141, 1312)
        elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
            LevelFarm = 3

            Monster = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"

            LevelQuest = 1
            NameCheckQuest = "Swan Pirate"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)

            CFrameMyMon = CFrame.new(878, 122, 1235)
            VectorMon = Vector3.new(878, 122, 1235)
        elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
            LevelFarm = 4

            Monster = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"

            LevelQuest = 2
            NameCheckQuest = "Factory Staff"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)

            CFrameMyMon = CFrame.new(295, 73, -56)
            VectorMon = Vector3.new(295, 73, -56)
        elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
            LevelFarm = 5

            Monster = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"

            LevelQuest = 1
            NameCheckQuest = "Marine Lieutenant"

            CFrameMyMon = CFrame.new(-2806, 73, -3038)
            VectorMon = Vector3.new(-2806, 73, -3038)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
            LevelFarm = 6

            Monster = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"

            LevelQuest = 2
            NameCheckQuest = "Marine Captain"

            CFrameMyMon = CFrame.new(-1869, 73, -3320)
            VectorMon = Vector3.new(-1869, 73, -3320)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
            LevelFarm = 7

            Monster = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"

            LevelQuest = 1
            NameCheckQuest = "Zombie"

            CFrameMyMon = CFrame.new(-5736, 126, -728)
            VectorMon = Vector3.new(-5736, 126, -728)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -794)
        elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
            LevelFarm = 8

            Monster = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"

            LevelQuest = 2
            NameCheckQuest = "Vampire"

            CFrameMyMon = CFrame.new(-6033, 7, -1317)
            VectorMon = Vector3.new(-6033, 7, -1317)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -795)
        elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
            LevelFarm = 9

            Monster = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"

            LevelQuest = 1
            NameCheckQuest = "Snow Trooper"

            CFrameMyMon = CFrame.new(478, 402, -5362)
            VectorMon = Vector3.new(478, 402, -5362)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
            LevelFarm = 10

            Monster = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"

            LevelQuest = 2
            NameCheckQuest = "Winter Warrior"

            CFrameMyMon = CFrame.new(1157, 430, -5188)
            VectorMon = Vector3.new(1157, 430, -5188)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
            LevelFarm = 11

            Monster = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"

            LevelQuest = 1
            NameCheckQuest = "Lab Subordinate"

            CFrameMyMon = CFrame.new(-5782, 42, -4484)
            VectorMon = Vector3.new(-5782, 42, -4484)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
            LevelFarm = 12

            Monster = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"

            LevelQuest = 2
            NameCheckQuest = "Horned Warrior"

            CFrameMyMon = CFrame.new(-6406, 24, -5805)
            VectorMon = Vector3.new(-6406, 24, -5805)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
            LevelFarm = 13

            Monster = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            LevelQuest = 1
            NameCheckQuest = "Magma Ninja"

            CFrameMyMon = CFrame.new(-5428, 78, -5959)
            VectorMon = Vector3.new(-5428, 78, -5959)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
            LevelFarm = 14

            Monster = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"

            LevelQuest = 2
            NameCheckQuest = "Lava Pirate"

            CFrameMyMon = CFrame.new(-5270, 42, -4800)
            VectorMon = Vector3.new(-5270, 42, -4800)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
            LevelFarm = 15

            Monster = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"

            LevelQuest = 1
            NameCheckQuest = "Ship Deckhand"

            CFrameMyMon = CFrame.new(1198, 126, 33031)
            VectorMon = Vector3.new(1198, 126, 33031)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)
        elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
            LevelFarm = 16

            Monster = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"

            LevelQuest = 2
            NameCheckQuest = "Ship Engineer"

            CFrameMyMon = CFrame.new(918, 44, 32787)
            VectorMon = Vector3.new(918, 44, 32787)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)
        elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
            LevelFarm = 17

            Monster = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"

            LevelQuest = 1
            NameCheckQuest = "Ship Steward"

            CFrameMyMon = CFrame.new(915, 130, 33419)
            VectorMon = Vector3.new(915, 130, 33419)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)
        elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
            LevelFarm = 18

            Monster = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"

            LevelQuest = 2
            NameCheckQuest = "Ship Officer"

            CFrameMyMon = CFrame.new(916, 181, 33335)
            VectorMon = Vector3.new(916, 181, 33335)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)
        elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
            LevelFarm = 19

            Monster = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"

            LevelQuest = 1
            NameCheckQuest = "Arctic Warrior"

            CFrameMyMon = CFrame.new(6038, 29, -6231)
            VectorMon = Vector3.new(6038, 29, -6231)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)
        elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
            LevelFarm = 20

            Monster = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"

            LevelQuest = 2
            NameCheckQuest = "Snow Lurker"

            CFrameMyMon = CFrame.new(5560, 42, -6826)
            VectorMon = Vector3.new(5560, 42, -6826)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)
        elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
            LevelFarm = 21
            Monster = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"

            LevelQuest = 1
            NameCheckQuest = "Sea Soldier"

            CFrameMyMon = CFrame.new(-3022, 16, -9722)
            VectorMon = Vector3.new(-3022, 16, -9722)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
            LevelFarm = 22
            Monster = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"

            LevelQuest = 2
            NameCheckQuest = "Water Fighter"

            CFrameMyMon = CFrame.new(-3385, 239, -10542)
            VectorMon = Vector3.new(-3385, 239, -10542)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        end
    end
    if ThreeWorld then
        if MyLevel == 1500 or MyLevel <= 1524 then
            LevelFarm = 1

            Monster = "Pirate Millionaire [Lv. 1500]"
            NameQuest = "PiratePortQuest"

            LevelQuest = 1
            NameCheckQuest = "Pirate Millionaire"

            CFrameMyMon = CFrame.new(-373, 75, 5550)
            VectorMon = Vector3.new(-373, 75, 5550)

            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            LevelFarm = 2

            Monster = "Pistol Billionaire [Lv. 1525]"
            NameQuest = "PiratePortQuest"

            LevelQuest = 2
            NameCheckQuest = "Pistol Billionaire"

            CFrameMyMon = CFrame.new(-469, 74, 5904)
            VectorMon = Vector3.new(-469, 74, 5904)

            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            LevelFarm = 3

            Monster = "Dragon Crew Warrior [Lv. 1575]"
            NameQuest = "AmazonQuest"

            LevelQuest = 1
            NameCheckQuest = "Dragon Crew Warrior"

            CFrameMyMon = CFrame.new(6339, 52, -1213)
            VectorMon = Vector3.new(6338, 52, -1213)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            LevelFarm = 4

            Monster = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"

            LevelQuest = 2
            NameCheckQuest = "Dragon Crew Archer"

            CFrameMyMon = CFrame.new(6594, 383, 139)
            VectorMon = Vector3.new(6594, 383, 139)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            LevelFarm = 5

            Monster = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"

            LevelQuest = 1
            NameCheckQuest = "Female Islander"

            CFrameMyMon = CFrame.new(5308, 819, 1047)
            VectorMon = Vector3.new(5308, 819, 1047)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            LevelFarm = 6

            Monster = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"

            LevelQuest = 2
            NameCheckQuest = "Giant Islanders"

            CFrameMyMon = CFrame.new(4951, 602, -68)
            VectorMon = Vector3.new(4951, 602, -68)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            LevelFarm = 7

            Monster = "Marine Commodore [Lv. 1700]"
            NameQuest = "MarineTreeIsland"

            LevelQuest = 1
            NameCheckQuest = "Marine Commodore"

            CFrameMyMon = CFrame.new(2447, 73, -7470)
            VectorMon = Vector3.new(2447, 73, -7470)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            LevelFarm = 8

            Monster = "Marine Rear Admiral [Lv. 1725]"
            NameQuest = "MarineTreeIsland"

            LevelQuest = 2
            NameCheckQuest = "Marine Rear Admiral"

            CFrameMyMon = CFrame.new(3671, 161, -6932)
            VectorMon = Vector3.new(3671, 161, -6932)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif MyLevel == 1775 or MyLevel <= 1800 then
            LevelFarm = 9

            Monster = "Fishman Raider [Lv. 1775]"
            NameQuest = "DeepForestIsland3"

            LevelQuest = 1
            NameCheckQuest = "Fishman Raider"

            CFrameMyMon = CFrame.new(-10560, 332, -8466)
            VectorMon = Vector3.new(-10560, 332, -8466)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            LevelFarm = 10

            Monster = "Fishman Captain [Lv. 1800]"
            NameQuest = "DeepForestIsland3"

            LevelQuest = 2
            NameCheckQuest = "Fishman Captain"

            CFrameMyMon = CFrame.new(-10993, 332, -8940)
            VectorMon = Vector3.new(-10993, 332, -8940)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            LevelFarm = 11

            Monster = "Forest Pirate [Lv. 1825]"
            NameQuest = "DeepForestIsland"

            LevelQuest = 1
            NameCheckQuest = "Forest Pirate"

            CFrameMyMon = CFrame.new(-13479, 333, -7905)
            VectorMon = Vector3.new(-13479, 333, -7905)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            LevelFarm = 12

            Monster = "Mythological Pirate [Lv. 1850]"
            NameQuest = "DeepForestIsland"

            LevelQuest = 2
            NameCheckQuest = "Mythological Pirate"

            CFrameMyMon = CFrame.new(-13545, 470, -6917)
            VectorMon = Vector3.new(-13545, 470, -6917)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            LevelFarm = 13

            Monster = "Jungle Pirate [Lv. 1900]"
            NameQuest = "DeepForestIsland2"

            LevelQuest = 1
            NameCheckQuest = "Jungle Pirate"

            CFrameMyMon = CFrame.new(-12107, 332, -10549)
            VectorMon = Vector3.new(-12106, 332, -10549)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            LevelFarm = 14

            Monster = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"

            LevelQuest = 2
            NameCheckQuest = "Musketeer Pirate"

            CFrameMyMon = CFrame.new(-13286, 392, -9769)
            VectorMon = Vector3.new(-13286, 392, -9768)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            LevelFarm = 15
            Monster = "Reborn Skeleton [Lv. 1975]"
            NameQuest = "HauntedQuest1"

            LevelQuest = 1
            NameCheckQuest = "Reborn Skeleton"

            CFrameMyMon = CFrame.new(-8760, 142, 6039)
            VectorMon = Vector3.new(-8760, 142, 6039)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            LevelFarm = 16

            Monster = "Living Zombie [Lv. 2000]"
            NameQuest = "HauntedQuest1"

            LevelQuest = 2
            NameCheckQuest = "Living Zombie"

            CFrameMyMon = CFrame.new(-10144, 140, 5932)
            VectorMon = Vector3.new(-10144, 140, 5932)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            LevelFarm = 17

            Monster = "Demonic Soul [Lv. 2025]"
            NameQuest = "HauntedQuest2"

            LevelQuest = 1
            NameCheckQuest = "Demonic Soul"

            CFrameMyMon = CFrame.new(-9507, 172, 6158)
            VectorMon = Vector3.new(-9506, 172, 6158)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            LevelFarm = 18

            Monster = "Posessed Mummy [Lv. 2050]"
            NameQuest = "HauntedQuest2"

            LevelQuest = 2
            NameCheckQuest = "Posessed Mummy"

            CFrameMyMon = CFrame.new(-9577, 6, 6223)
            VectorMon = Vector3.new(-9577, 6, 6223)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)

        elseif MyLevel == 2075 or MyLevel <= 2099 then
            LevelFarm = 19

            Monster = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"

            LevelQuest = 1
            NameCheckQuest = "Peanut Scout"

            CFrameMyMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            LevelFarm = 20

            Monster = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"

            LevelQuest = 2
            NameCheckQuest = "Peanut President"

            CFrameMyMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            LevelFarm = 21

            Monster = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"

            LevelQuest = 1
            NameCheckQuest = "Ice Cream Chef"

            CFrameMyMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            LevelFarm = 22

            Monster = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"

            LevelQuest = 2
            NameCheckQuest = "Ice Cream Commander"

            CFrameMyMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        ---------------------------------------------------------------
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            LevelFarm = 23

            Monster = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"

            LevelQuest = 1
            NameCheckQuest = "Cookie Crafter"

            CFrameMyMon = CFrame.new(-2365, 38, -12099)
            VectorMon = Vector3.new(-2365, 38, -12099)

            CFrameQuest = CFrame.new(-2020, 38, -12025)
            VectorQuest = Vector3.new(-2020, 38, -12025)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            LevelFarm = 24

            Monster = "Cake Guard [Lv. 2225]"
            NameQuest = "CakeQuest1"

            LevelQuest = 2
            NameCheckQuest = "Cake Guard"

            CFrameMyMon = CFrame.new(-1651, 38, -12308)
            VectorMon = Vector3.new(-1651, 38, -12308)

            CFrameQuest = CFrame.new(-2020, 38, -12025)
            VectorQuest = Vector3.new(-2020, 38, -12025)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            LevelFarm = 25

            Monster = "Baking Staff [Lv. 2250]"
            NameQuest = "CakeQuest2"

            LevelQuest = 1
            NameCheckQuest = "Baking Staff"

            CFrameMyMon = CFrame.new(-1870, 38, -12938)
            VectorMon = Vector3.new(-1870, 38, -12938)

            CFrameQuest = CFrame.new(-1926, 38, -12850)
            VectorQuest = Vector3.new(-1926, 38, -12850)
        elseif MyLevel == 2275 or MyLevel <= 2300 then
            LevelFarm = 26

            Monster = "Head Baker [Lv. 2275]"
            NameQuest = "CakeQuest2"

            LevelQuest = 2
            NameCheckQuest = "Head Baker"

            CFrameMyMon = CFrame.new(-1926, 88, -12850)
            VectorMon = CFrame.new(-1870, 38, -12938)

            CFrameQuest = CFrame.new(-1926, 38, -12850)
            VectorQuest = Vector3.new(-1926, 38, -12850)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            LevelFarm = 27

            Monster = "Cocoa Warrior [Lv. 2300]"
            NameQuest = "ChocQuest1"

            LevelQuest = 1
            NameCheckQuest = "Cocoa Warrior"

            CFrameMyMon = CFrame.new(79.4172134399414, 73.42101287841797, -12310.0205078125)

            CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            LevelFarm = 28

            Monster = "Chocolate Bar Battler [Lv. 2325]"
            NameQuest = "ChocQuest1"

            LevelQuest = 2
            NameCheckQuest = "Chocolate Bar Battler"

            CFrameMyMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)

            CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            LevelFarm = 29

            Monster = "Sweet Thief [Lv. 2350]"
            NameQuest = "ChocQuest2"

            LevelQuest = 1
            NameCheckQuest = "Sweet Thief"

            CFrameMyMon = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)

            CFrameQuest = CFrame.new(71.89511108398438, 77.21478271484375, -12632.435546875)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            LevelFarm = 30

            Monster = "Candy Rebel [Lv. 2375]"
            NameQuest = "ChocQuest2"

            LevelQuest = 2
            NameCheckQuest = "Candy Rebel"

            CFrameMyMon = CFrame.new(134.3748016357422, 77.21473693847656, -12882.1650390625)

            CFrameQuest = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
        elseif MyLevel == 2400 or MyLevel <= 2424 then
            LevelFarm = 31

            Monster = "Candy Pirate [Lv. 2400]"
            NameQuest = "CandyQuest1"

            LevelQuest = 1
            NameCheckQuest = "Candy Pirate"

            CFrameMyMon = CFrame.new(-1271.6993408203125, 139.93331909179688, -14354.8515625)

            CFrameQuest = CFrame.new(-1147.6552734375, 17.82676887512207, -14447.7099609375)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            LevelFarm = 32

            Monster = "Snow Demon [Lv. 2425]"
            NameQuest = "CandyQuest1"

            LevelQuest = 2
            NameCheckQuest = "Snow Demon"

            CFrameMyMon = CFrame.new(-844.35546875, 138.32464599609375, -14496.455078125)

            CFrameQuest = CFrame.new(-1147.6552734375, 17.82676887512207, -14447.7099609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            LevelFarm = 33

            Monster = "Isle Outlaw [Lv. 2450]"
            NameQuest = "TikiQuest1"

            LevelQuest = 1
            NameCheckQuest = "Isle Outlaw"

            CFrameMyMon = CFrame.new(-16277.9599609375, 94.06755828857422, -168.73194885253906)
            CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            LevelFarm = 34

            Monster = "Island Boy [Lv. 2475]"
            NameQuest = "TikiQuest1"

            LevelQuest = 2
            NameCheckQuest = "Island Boy"

            CFrameMyMon = CFrame.new(-16749.416015625, 125.9124755859375, -272.1277770996094)
            CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            LevelFarm = 35

            Monster = "Sun-kissed Warrior [Lv. 2500]"
            NameQuest = "TikiQuest2"

            LevelQuest = 1
            NameCheckQuest = "kissed Warrior"

            CFrameMyMon = CFrame.new(-16277.009765625, 68.78734588623047, 1041.3009033203125)
            CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625)
        elseif MyLevel >= 2525 then
            LevelFarm = 36

            Monster = "Isle Champion [Lv. 2525]"
            NameQuest = "TikiQuest2"

            LevelQuest = 2
            NameCheckQuest = "Isle Champion"

            CFrameMyMon = CFrame.new(-16743.2421875, 137.21322631835938, 1148.2789306640625)
            CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625)
        end
    end
    
end)

questdata.CheckOldQuest = (function(LevelFarm)
    if OldWorld then
        if LevelFarm == 1 then -- Bandit
            Monster = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"

            LevelQuest = 1
            NameCheckQuest = "Bandit"

            CFrameMyMon = CFrame.new(1145, 17, 1634)
            VectorMon = Vector3.new(1145, 17, 1634)

            CFrameQuest = CFrame.new(1060, 17, 1547)
            VectorQuest = Vector3.new(1060, 17, 1547)
        elseif LevelFarm == 2 then -- Monkey
            Monster = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"

            LevelQuest = 1
            NameCheckQuest = "Monkey"

            CFrameMyMon = CFrame.new(-1496, 39, 35)
            VectorMon = Vector3.new(-1496, 39, 35)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif LevelFarm == 3 then -- Gorilla
            Monster = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"

            LevelQuest = 2
            NameCheckQuest = "Gorilla"

            CFrameMyMon = CFrame.new(-1237, 6, -486)
            VectorMon = Vector3.new(-1237, 7, -486)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif LevelFarm == 4 then -- Pirate
            Monster = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"

            LevelQuest = 1
            NameCheckQuest = "Pirate"

            CFrameMyMon = CFrame.new(-1115, 14, 3938)
            VectorMon = Vector3.new(-1115, 14, 3938)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif LevelFarm == 5 then -- Brute
            Monster = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"

            LevelQuest = 2
            NameCheckQuest = "Brute"

            CFrameMyMon = CFrame.new(-1145, 15, 4350)
            VectorMon = Vector3.new(-1146, 15, 4350)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif LevelFarm == 6 then -- Desert Bandit
            Monster = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"

            LevelQuest = 1
            NameCheckQuest = "Desert Bandit"

            CFrameMyMon = CFrame.new(932, 7, 4484)
            VectorMon = Vector3.new(932, 7, 4484)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif LevelFarm == 7 then -- Desert Officre
            Monster = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"

            LevelQuest = 2
            NameCheckQuest = "Desert Officer"

            CFrameMyMon = CFrame.new(1572, 10, 4373)
            VectorMon = Vector3.new(1572, 10, 4373)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif LevelFarm == 8 then -- Snow Bandits
            Monster = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"

            LevelQuest = 1
            NameCheckQuest = "Snow Bandits"

            CFrameMyMon = CFrame.new(1289, 150, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif LevelFarm == 9 then -- Snowman
            Monster = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"

            LevelQuest = 2
            NameCheckQuest = "Snowman"

            CFrameMyMon = CFrame.new(1289, 150, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif LevelFarm == 10 then -- Chief Petty Officer
            Monster = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"

            LevelQuest = 1
            NameCheckQuest = "Chief Petty Officer"

            CFrameMyMon = CFrame.new(-4855, 23, 4308)
            VectorMon = Vector3.new(-4855, 23, 4308)

            CFrameQuest = CFrame.new(-5036, 29, 4325)
            VectorQuest = Vector3.new(-5036, 29, 4325)
        elseif LevelFarm == 11 then -- Sky Bandit
            Monster = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"

            LevelQuest = 1
            NameCheckQuest = "Sky Bandit"

            CFrameMyMon = CFrame.new(-4981, 278, -2830)
            VectorMon = Vector3.new(-4981, 278, -2830)

            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif LevelFarm == 12 then -- Dark Master
            Monster = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"

            LevelQuest = 2
            NameCheckQuest = "Dark Master"

            CFrameMyMon = CFrame.new(-5250, 389, -2272)
            VectorMon = Vector3.new(-5250, 389, -2272)

            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif LevelFarm == 13 then -- Dark Master
            Monster = "Prisoner [Lv. 190]"
            NameQuest = "PrisonerQuest"

            LevelQuest = 1
            NameCheckQuest = "8 Prisoner"

            CFrameMyMon = CFrame.new(5411, 96, 690)
            VectorMon = Vector3.new(5411, 96, 690)

            CFrameQuest = CFrame.new(5308, 2, 474)
            VectorQuest = Vector3.new(5308, 2, 474)
        elseif LevelFarm == 14 then -- Dark Master
            Monster = "Dangerous Prisoner [Lv. 210]"
            NameQuest = "PrisonerQuest"

            LevelQuest = 2
            NameCheckQuest = "Dangerous Prisoner"

            CFrameMyMon = CFrame.new(5411, 96, 690)
            VectorMon = Vector3.new(5411, 96, 690)

            CFrameQuest = CFrame.new(5308, 2, 474)
            VectorQuest = Vector3.new(5308, 2, 474)
        elseif LevelFarm == 15 then -- Toga Warrior
            Monster = "Toga Warrior [Lv. 250]"
            NameQuest = "ColosseumQuest"

            LevelQuest = 1
            NameCheckQuest = "Toga Warrior"

            CFrameMyMon = CFrame.new(-1641.4344482421875, 7.415142059326172, -2864.462646484375)
            VectorMon = Vector3.new(-1770, 8, -2777)

            CFrameQuest = CFrame.new(-1576, 8, -2985)
            VectorQuest = Vector3.new(-1576, 8, -2985)
        elseif LevelFarm == 16 then -- Gladiato
            Monster = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"

            LevelQuest = 2
            NameCheckQuest = "Gladiato"

            CFrameMyMon = CFrame.new(-1385.5233154296875, 7.468349456787109, -3163.066650390625)
            VectorMon = Vector3.new(-1278, 8, -3240)

            CFrameQuest = CFrame.new(-1576, 8, -2985)
            VectorQuest = Vector3.new(-1576, 8, -2985)
        elseif LevelFarm == 17 then -- Military Soldier
            Monster = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"

            LevelQuest = 1
            NameCheckQuest = "Military Soldier"

            CFrameMyMon = CFrame.new(-5408, 11, 8447)
            VectorMon = Vector3.new(-5408, 11, 8447)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif LevelFarm == 18 then -- Military Spy
            Monster = "Military Spy [Lv. 325]"
            NameQuest = "MagmaQuest"

            LevelQuest = 2
            NameCheckQuest = "Military Spy"

            CFrameMyMon = CFrame.new(-5815, 84, 8820)
            VectorMon = Vector3.new(-5815, 84, 8820)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif LevelFarm == 19 then -- Fishman Warrior
            Monster = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"

            LevelQuest = 1
            NameCheckQuest = "Fishman Warrior"

            CFrameMyMon = CFrame.new(60859, 19, 1501)
            VectorMon = Vector3.new(60859, 19, 1501)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)
        elseif LevelFarm == 20 then -- Fishman Commando
            Monster = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"

            LevelQuest = 2
            NameCheckQuest = "Fishman Commando"

            CFrameMyMon = CFrame.new(61891, 19, 1470)
            VectorMon = Vector3.new(61891, 19, 1470)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)
        elseif LevelFarm == 21 then -- God's Guards
            Monster = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"

            LevelQuest = 1
            NameCheckQuest = "God's Guards"

            CFrameMyMon = CFrame.new(-4698, 845, -1912)
            VectorMon = Vector3.new(-4698, 845, -1912)

            CFrameQuest = CFrame.new(-4722, 845, -1954)
            VectorQuest = Vector3.new(-4722, 846, -1954)
        elseif LevelFarm == 22 then -- Shandas
            Monster = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"

            LevelQuest = 2
            NameCheckQuest = "Shandas"

            CFrameMyMon = CFrame.new(-7685, 5567, -502)
            VectorMon = Vector3.new(-7685, 5567, -502)

            CFrameQuest = CFrame.new(-7862, 5546, -380)
            VectorQuest = Vector3.new(-7862, 5546, -380)
        elseif LevelFarm == 23 then -- Royal Squad
            Monster = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"

            LevelQuest = 1
            NameCheckQuest = "Royal Squad"

            CFrameMyMon = CFrame.new(-7670, 5607, -1460)
            VectorMon = Vector3.new(-7670, 5607, -1460)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif LevelFarm == 24 then -- Royal Soldier
            Monster = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"

            LevelQuest = 2
            NameCheckQuest = "Royal Soldier"

            CFrameMyMon = CFrame.new(-7828, 5607, -1744)
            VectorMon = Vector3.new(-7828, 5607, -1744)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif LevelFarm == 25 then -- Galley Pirate
            Monster = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"

            LevelQuest = 1
            NameCheckQuest = "Galley Pirate"

            CFrameMyMon = CFrame.new(5589, 45, 3996)
            VectorMon = Vector3.new(5589, 45, 3996)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        elseif LevelFarm == 26 then -- Galley Captain
            Monster = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"

            LevelQuest = 2
            NameCheckQuest = "Galley Captain"

            CFrameMyMon = CFrame.new(5649, 39, 4936)
            VectorMon = Vector3.new(5649, 39, 4936)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        end
    end
    if NewWorld then
        if LevelFarm == 1 then -- Raider [Lv. 700]
            Monster = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"

            LevelQuest = 1
            NameCheckQuest = "Raider"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMyMon = CFrame.new(-746, 39, 2390)
            VectorMon = Vector3.new(-746, 39, 2389)
        elseif LevelFarm == 2 then -- Mercenary [Lv. 725]
            Monster = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"

            LevelQuest = 2
            NameCheckQuest = "Mercenary"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMyMon = CFrame.new(-874, 141, 1312)
            VectorMon = Vector3.new(-874, 141, 1312)
        elseif LevelFarm == 3 then -- Swan Pirate [Lv. 775]
            Monster = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"

            LevelQuest = 1
            NameCheckQuest = "Swan Pirate"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)

            CFrameMyMon = CFrame.new(878, 122, 1235)
            VectorMon = Vector3.new(878, 122, 1235)
        elseif LevelFarm == 4 then -- Factory Staff [Lv. 800]
            Monster = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"

            LevelQuest = 2
            NameCheckQuest = "Factory Staff"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)

            CFrameMyMon = CFrame.new(295, 73, -56)
            VectorMon = Vector3.new(295, 73, -56)
        elseif LevelFarm == 5 then -- Marine Lieutenant [Lv. 875]
            Monster = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"

            LevelQuest = 1
            NameCheckQuest = "Marine Lieutenant"

            CFrameMyMon = CFrame.new(-2806, 73, -3038)
            VectorMon = Vector3.new(-2806, 73, -3038)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif LevelFarm == 6 then -- Marine Captain [Lv. 900]
            Monster = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"

            LevelQuest = 2
            NameCheckQuest = "Marine Captain"

            CFrameMyMon = CFrame.new(-1869, 73, -3320)
            VectorMon = Vector3.new(-1869, 73, -3320)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif LevelFarm == 7 then -- Zombie [Lv. 950]
            Monster = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"

            LevelQuest = 1
            NameCheckQuest = "Zombie"

            CFrameMyMon = CFrame.new(-5736, 126, -728)
            VectorMon = Vector3.new(-5736, 126, -728)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -794)
        elseif LevelFarm == 8 then -- Vampire [Lv. 975]
            Monster = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"

            LevelQuest = 2
            NameCheckQuest = "Vampire"

            CFrameMyMon = CFrame.new(-6033, 7, -1317)
            VectorMon = Vector3.new(-6033, 7, -1317)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -795)
        elseif LevelFarm == 9 then -- Snow Trooper [Lv. 1000] **
            Monster = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"

            LevelQuest = 1
            NameCheckQuest = "Snow Trooper"

            CFrameMyMon = CFrame.new(478, 402, -5362)
            VectorMon = Vector3.new(478, 402, -5362)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif LevelFarm == 10 then -- Winter Warrior [Lv. 1050]
            Monster = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"

            LevelQuest = 2
            NameCheckQuest = "Winter Warrior"

            CFrameMyMon = CFrame.new(1157, 430, -5188)
            VectorMon = Vector3.new(1157, 430, -5188)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif LevelFarm == 11 then -- Lab Subordinate [Lv. 1100]
            Monster = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"

            LevelQuest = 1
            NameCheckQuest = "Lab Subordinate"

            CFrameMyMon = CFrame.new(-5782, 42, -4484)
            VectorMon = Vector3.new(-5782, 42, -4484)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif LevelFarm == 12 then -- Horned Warrior [Lv. 1125]
            Monster = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"

            LevelQuest = 2
            NameCheckQuest = "Horned Warrior"

            CFrameMyMon = CFrame.new(-6406, 24, -5805)
            VectorMon = Vector3.new(-6406, 24, -5805)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif LevelFarm == 13 then -- Magma Ninja [Lv. 1175]
            Monster = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            LevelQuest = 1
            NameCheckQuest = "Magma Ninja"

            CFrameMyMon = CFrame.new(-5428, 78, -5959)
            VectorMon = Vector3.new(-5428, 78, -5959)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif LevelFarm == 14 then -- Lava Pirate [Lv. 1200]
            Monster = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"

            LevelQuest = 2
            NameCheckQuest = "Lava Pirate"

            CFrameMyMon = CFrame.new(-5270, 42, -4800)
            VectorMon = Vector3.new(-5270, 42, -4800)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif LevelFarm == 15 then -- Ship Deckhand [Lv. 1250]
            Monster = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"

            LevelQuest = 1
            NameCheckQuest = "Ship Deckhand"

            CFrameMyMon = CFrame.new(1198, 126, 33031)
            VectorMon = Vector3.new(1198, 126, 33031)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)
        elseif LevelFarm == 16 then -- Ship Engineer [Lv. 1275]
            Monster = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"

            LevelQuest = 2
            NameCheckQuest = "Ship Engineer"

            CFrameMyMon = CFrame.new(918, 44, 32787)
            VectorMon = Vector3.new(918, 44, 32787)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)
        elseif LevelFarm == 17 then -- Ship Steward [Lv. 1300]
            Monster = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"

            LevelQuest = 1
            NameCheckQuest = "Ship Steward"

            CFrameMyMon = CFrame.new(915, 130, 33419)
            VectorMon = Vector3.new(915, 130, 33419)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)
        elseif LevelFarm == 18 then -- Ship Officer [Lv. 1325]
            Monster = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"

            LevelQuest = 2
            NameCheckQuest = "Ship Officer"

            CFrameMyMon = CFrame.new(916, 181, 33335)
            VectorMon = Vector3.new(916, 181, 33335)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)
        elseif LevelFarm == 19 then -- Arctic Warrior [Lv. 1350]
            Monster = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"

            LevelQuest = 1
            NameCheckQuest = "Arctic Warrior"

            CFrameMyMon = CFrame.new(6038, 29, -6231)
            VectorMon = Vector3.new(6038, 29, -6231)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)
        elseif LevelFarm == 20 then -- Snow Lurker [Lv. 1375]
            Monster = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"

            LevelQuest = 2
            NameCheckQuest = "Snow Lurker"

            CFrameMyMon = CFrame.new(5560, 42, -6826)
            VectorMon = Vector3.new(5560, 42, -6826)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)
        elseif LevelFarm == 21 then -- Sea Soldier [Lv. 1425]
            Monster = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"

            LevelQuest = 1
            NameCheckQuest = "Sea Soldier"

            CFrameMyMon = CFrame.new(-3022, 16, -9722)
            VectorMon = Vector3.new(-3022, 16, -9722)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        elseif LevelFarm == 22 then -- Water Fighter [Lv. 1450]
            Monster = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"

            LevelQuest = 2
            NameCheckQuest = "Water Fighter"

            CFrameMyMon = CFrame.new(-3385, 239, -10542)
            VectorMon = Vector3.new(-3385, 239, -10542)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        end
    end
    if ThreeWorld then
        if LevelFarm == 1 then
            Monster = "Pirate Millionaire [Lv. 1500]"
            NameQuest = "PiratePortQuest"

            LevelQuest = 1
            NameCheckQuest = "Pirate"

            CFrameMyMon = CFrame.new(-373, 75, 5550)
            VectorMon = Vector3.new(-373, 75, 5550)

            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
       elseif LevelFarm == 2 then
            Monster = "Pistol Billionaire [Lv. 1525]"
            NameQuest = "PiratePortQuest"

            LevelQuest = 2
            NameCheckQuest = "Pistol"

            CFrameMyMon = CFrame.new(-469, 74, 5904)
            VectorMon = Vector3.new(-469, 74, 5904)

            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
        elseif LevelFarm == 3 then
            Monster = "Dragon Crew Warrior [Lv. 1575]"
            NameQuest = "AmazonQuest"

            LevelQuest = 1
            NameCheckQuest = "Warrior"

            CFrameMyMon = CFrame.new(6339, 52, -1213)
            VectorMon = Vector3.new(6338, 52, -1213)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif LevelFarm == 4 then
            Monster = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"

            LevelQuest = 2
            NameCheckQuest = "Archer"

            CFrameMyMon = CFrame.new(6594, 383, 139)
            VectorMon = Vector3.new(6594, 383, 139)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif LevelFarm == 5 then
            Monster = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"

            LevelQuest = 1
            NameCheckQuest = "Female"

            CFrameMyMon = CFrame.new(5308, 819, 1047)
            VectorMon = Vector3.new(5308, 819, 1047)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif LevelFarm == 6 then
            Monster = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"

            LevelQuest = 2
            NameCheckQuest = "Giant Islanders"

            CFrameMyMon = CFrame.new(4951, 602, -68)
            VectorMon = Vector3.new(4951, 602, -68)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif LevelFarm == 7 then
            Monster = "Marine Commodore [Lv. 1700]"
            NameQuest = "MarineTreeIsland"

            LevelQuest = 1
            NameCheckQuest = "Marine Commodore"

            CFrameMyMon = CFrame.new(2447, 73, -7470)
            VectorMon = Vector3.new(2447, 73, -7470)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif LevelFarm == 8 then
            Monster = "Marine Rear Admiral [Lv. 1725]"
            NameQuest = "MarineTreeIsland"

            LevelQuest = 2
            NameCheckQuest = "Marine Rear Admiral"

            CFrameMyMon = CFrame.new(3671, 161, -6932)
            VectorMon = Vector3.new(3671, 161, -6932)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif LevelFarm == 9 then
            Monster = "Fishman Raider [Lv. 1775]"
            NameQuest = "DeepForestIsland3"

            LevelQuest = 1
            NameCheckQuest = "Fishman Raider"

            CFrameMyMon = CFrame.new(-10560, 332, -8466)
            VectorMon = Vector3.new(-10560, 332, -8466)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif LevelFarm == 10 then
            Monster = "Fishman Captain [Lv. 1800]"
            NameQuest = "DeepForestIsland3"

            LevelQuest = 2
            NameCheckQuest = "Fishman Captain"

            CFrameMyMon = CFrame.new(-10993, 332, -8940)
            VectorMon = Vector3.new(-10993, 332, -8940)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif LevelFarm == 11 then
            Monster = "Forest Pirate [Lv. 1825]"
            NameQuest = "DeepForestIsland"

            LevelQuest = 1
            NameCheckQuest = "Forest Pirate"

            CFrameMyMon = CFrame.new(-13479, 333, -7905)
            VectorMon = Vector3.new(-13479, 333, -7905)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif LevelFarm == 12 then
            Monster = "Mythological Pirate [Lv. 1850]"
            NameQuest = "DeepForestIsland"

            LevelQuest = 2
            NameCheckQuest = "Mythological Pirate"

            CFrameMyMon = CFrame.new(-13545, 470, -6917)
            VectorMon = Vector3.new(-13545, 470, -6917)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif LevelFarm == 13 then
            Monster = "Jungle Pirate [Lv. 1900]"
            NameQuest = "DeepForestIsland2"

            LevelQuest = 1
            NameCheckQuest = "Jungle Pirate"

            CFrameMyMon = CFrame.new(-12107, 332, -10549)
            VectorMon = Vector3.new(-12106, 332, -10549)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
        elseif LevelFarm == 14 then
            Monster = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"

            LevelQuest = 2
            NameCheckQuest = "Musketeer Pirate"

            CFrameMyMon = CFrame.new(-13286, 392, -9769)
            VectorMon = Vector3.new(-13286, 392, -9768)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
       elseif LevelFarm == 15 then
            Monster = "Reborn Skeleton [Lv. 1975]"
            NameQuest = "HauntedQuest1"

            LevelQuest = 1
            NameCheckQuest = "Reborn Skeleton"

            CFrameMyMon = CFrame.new(-8760, 142, 6039)
            VectorMon = Vector3.new(-8760, 142, 6039)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif LevelFarm == 16 then
            Monster = "Living Zombie [Lv. 2000]"
            NameQuest = "HauntedQuest1"

            LevelQuest = 2
            NameCheckQuest = "Living Zombie"

            CFrameMyMon = CFrame.new(-10144, 140, 5932)
            VectorMon = Vector3.new(-10144, 140, 5932)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif LevelFarm == 17 then
            Monster = "Demonic Soul [Lv. 2025]"
            NameQuest = "HauntedQuest2"

            LevelQuest = 1
            NameCheckQuest = "Demonic Soul"

            CFrameMyMon = CFrame.new(-9507, 172, 6158)
            VectorMon = Vector3.new(-9506, 172, 6158)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)
        elseif LevelFarm == 18 then
            Monster = "Posessed Mummy [Lv. 2050]"
            NameQuest = "HauntedQuest2"

            LevelQuest = 2
            NameCheckQuest = "Posessed Mummy"

            CFrameMyMon = CFrame.new(-9577, 6, 6223)
            VectorMon = Vector3.new(-9577, 6, 6223)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)

        elseif LevelFarm == 19 then
            Monster = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"

            LevelQuest = 1
            NameCheckQuest = "Peanut Scout"

            CFrameMyMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif LevelFarm == 20 then
            Monster = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"

            LevelQuest = 2
            NameCheckQuest = "Peanut President"

            CFrameMyMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif LevelFarm == 21 then
            Monster = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"

            LevelQuest = 1
            NameCheckQuest = "Ice Cream Chef"

            CFrameMyMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        elseif LevelFarm == 22 then
            Monster = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"

            LevelQuest = 2
            NameCheckQuest = "Ice Cream Commander"

            CFrameMyMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        ---------------------------------------------------------------
        elseif LevelFarm == 23 then
            Monster = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"

            LevelQuest = 1
            NameCheckQuest = "Cookie Crafter"

            CFrameMyMon = CFrame.new(-2365, 38, -12099)
            VectorMon = Vector3.new(-2365, 38, -12099)

            CFrameQuest = CFrame.new(-2020, 38, -12025)
            VectorQuest = Vector3.new(-2020, 38, -12025)
        elseif LevelFarm == 24 then
            Monster = "Cake Guard [Lv. 2225]"
            NameQuest = "CakeQuest1"

            LevelQuest = 2
            NameCheckQuest = "Cake Guard"

            CFrameMyMon = CFrame.new(-1651, 38, -12308)
            VectorMon = Vector3.new(-1651, 38, -12308)

            CFrameQuest = CFrame.new(-2020, 38, -12025)
            VectorQuest = Vector3.new(-2020, 38, -12025)
        elseif LevelFarm == 25 then
            Monster = "Baking Staff [Lv. 2250]"
            NameQuest = "CakeQuest2"

            LevelQuest = 1
            NameCheckQuest = "Baking Staff"

            CFrameMyMon = CFrame.new(-1870, 38, -12938)
            VectorMon = Vector3.new(-1870, 38, -12938)

            CFrameQuest = CFrame.new(-1926, 38, -12850)
            VectorQuest = Vector3.new(-1926, 38, -12850)
        elseif LevelFarm == 26 then
            Monster = "Head Baker [Lv. 2275]"
            NameQuest = "CakeQuest2"

            LevelQuest = 2
            NameCheckQuest = "Head Baker"

            CFrameMyMon = CFrame.new(-1926, 88, -12850)
            VectorMon = CFrame.new(-1870, 38, -12938)

            CFrameQuest = CFrame.new(-1926, 38, -12850)
            VectorQuest = Vector3.new(-1926, 38, -12850)
        elseif LevelFarm == 27 then
            Monster = "Cocoa Warrior [Lv. 2300]"
            NameQuest = "ChocQuest1"

            LevelQuest = 1
            NameCheckQuest = "Cocoa Warrior"

            CFrameMyMon = CFrame.new(79.4172134399414, 73.42101287841797, -12310.0205078125)

            CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        elseif LevelFarm == 28 then
            Monster = "Chocolate Bar Battler [Lv. 2325]"
            NameQuest = "ChocQuest1"

            LevelQuest = 2
            NameCheckQuest = "Chocolate Bar Battler"

            CFrameMyMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)

            CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        elseif LevelFarm == 29 then
            Monster = "Sweet Thief [Lv. 2350]"
            NameQuest = "ChocQuest2"

            LevelQuest = 1
            NameCheckQuest = "Sweet Thief"

            CFrameMyMon = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)

            CFrameQuest = CFrame.new(71.89511108398438, 77.21478271484375, -12632.435546875)
        elseif LevelFarm == 30 then
            Monster = "Candy Rebel [Lv. 2375]"
            NameQuest = "ChocQuest2"

            LevelQuest = 2
            NameCheckQuest = "Candy Rebel"

            CFrameMyMon = CFrame.new(134.3748016357422, 77.21473693847656, -12882.1650390625)

            CFrameQuest = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
        elseif LevelFarm == 31 then

            Monster = "Candy Pirate [Lv. 2400]"
            NameQuest = "CandyQuest1"

            LevelQuest = 1
            NameCheckQuest = "Candy Pirate"

            CFrameMyMon = CFrame.new(-1271.6993408203125, 139.93331909179688, -14354.8515625)

            CFrameQuest = CFrame.new(-1147.6552734375, 17.82676887512207, -14447.7099609375)
        elseif LevelFarm == 32 then
            Monster = "Snow Demon [Lv. 2425]"
            NameQuest = "CandyQuest1"

            LevelQuest = 2
            NameCheckQuest = "Snow Demon"

            CFrameMyMon = CFrame.new(-844.35546875, 138.32464599609375, -14496.455078125)

            CFrameQuest = CFrame.new(-1147.6552734375, 17.82676887512207, -14447.7099609375)
        elseif LevelFarm == 33 then
            Monster = "Isle Outlaw [Lv. 2450]"
            NameQuest = "TikiQuest1"

            LevelQuest = 1
            NameCheckQuest = "Isle Outlaw"

            CFrameMyMon = CFrame.new(-16277.9599609375, 94.06755828857422, -168.73194885253906)
            CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344)
        elseif LevelFarm == 34 then
            Monster = "Island Boy [Lv. 2475]"
            NameQuest = "TikiQuest1"

            LevelQuest = 2
            NameCheckQuest = "Island Boy"

            CFrameMyMon = CFrame.new(-16749.416015625, 125.9124755859375, -272.1277770996094)
            CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344)
        elseif LevelFarm == 35 then
            Monster = "Sun-kissed Warrior [Lv. 2500]"
            NameQuest = "TikiQuest2"

            LevelQuest = 1
            NameCheckQuest = "kissed Warrior"

            CFrameMyMon = CFrame.new(-16277.009765625, 68.78734588623047, 1041.3009033203125)
            CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625)
        elseif LevelFarm == 36 then
            Monster = "Isle Champion [Lv. 2525]"
            NameQuest = "TikiQuest2"

            LevelQuest = 2
            NameCheckQuest = "Isle Champion"

            CFrameMyMon = CFrame.new(-16743.2421875, 137.21322631835938, 1148.2789306640625)
            CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625)
        end
    end
end)

return questdata
