local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'coat'}, 					Cfcoat, 1)
shopModule:addSellableItem({'jacket'}, 					Cfjacket, 1)
shopModule:addSellableItem({'knight armor'}, 					Cfknightarmor, 875)
shopModule:addSellableItem({'golden armor'}, 					Cfgoldenarmor, 1500)
shopModule:addSellableItem({'leather armor'}, 					Cfleatherarmor, 12)
shopModule:addSellableItem({'chain armor'}, 					Cfchainarmor, 70)
shopModule:addSellableItem({'brass armor'}, 					Cfbrassarmor, 150)
shopModule:addSellableItem({'plate armor'}, 					Cfplatearmor, 400)
shopModule:addSellableItem({'leather helmet'}, 					Cfleatherhelmet, 4)
shopModule:addSellableItem({'chain helmet'}, 					Cfchainhelmet, 17)
shopModule:addSellableItem({'steel helmet'}, 					Cfsteelhelmet, 190)
shopModule:addSellableItem({'brass helmet'}, 					Cfbrasshelmet, 30)
shopModule:addSellableItem({'viking helmet'}, 					Cfvikinghelmet, 66)
shopModule:addSellableItem({'iron helmet'}, 					Cfironhelmet, 145)
shopModule:addSellableItem({'devil helmet'}, 					Cfdevilhelmet, 450)
shopModule:addSellableItem({'warrior helmet'}, 					Cfwarriorhelmet, 696)
shopModule:addSellableItem({'leather legs'}, 					Cfleatherlegs, 1)
shopModule:addSellableItem({'chain legs'}, 					Cfchainlegs, 20)
shopModule:addSellableItem({'brass legs'}, 					Cfbrasslegs, 49)
shopModule:addSellableItem({'plate legs'}, 					Cfplatelegs, 115)
shopModule:addSellableItem({'knight legs'}, 					Cfknightlegs, 375)
shopModule:addSellableItem({'wooden shield'}, 					Cfwoodenshield, 5)
shopModule:addSellableItem({'battleshield'}, 					Cfbattleshield, 95)
shopModule:addSellableItem({'steel shield'}, 					Cfsteelshield, 80)
shopModule:addSellableItem({'brass shield'}, 					Cfbrassshield, 16)
shopModule:addSellableItem({'plate shield'}, 					Cfplateshield, 31)
shopModule:addSellableItem({'guardian shield'}, 					Cfguardianshield, 180)
shopModule:addSellableItem({'dragon shield'}, 					Cfdragonshield, 360)
shopModule:addSellableItem({'two handed sword'}, 					Cftwohandedsword, 450)
shopModule:addSellableItem({'longsword'}, 					Cflongsword, 51)
shopModule:addSellableItem({'dagger'}, 					Cfdagger, 2)
shopModule:addSellableItem({'club'}, 					Cfclub, 1)
shopModule:addSellableItem({'rapier'}, 					Cfrapier, 5)
shopModule:addSellableItem({'sabre'}, 					Cfsabre, 12)
shopModule:addSellableItem({'spear'}, 					Cfspear, 3)
shopModule:addSellableItem({'sjort sword'}, 					Cfshortsword, 10)
shopModule:addSellableItem({'spike sword'}, 					Cfspikesword, 225)
shopModule:addSellableItem({'fire sword'}, 					Cffiresword, 1000)
shopModule:addSellableItem({'sword'}, 					Cfsword, 25)
shopModule:addSellableItem({'mace'}, 					Cfmace, 23)


shopModule:addBuyableItem({'dagger'}, 					Cfdagger, 5)
shopModule:addBuyableItem({'spear'}, 					Cfspear, 10)
shopModule:addBuyableItem({'rapier'}, 					Cfrapier, 15)
shopModule:addBuyableItem({'sabre'}, 					Cfsabre, 35)
shopModule:addBuyableItem({'staff'}, 					Cfstaff, 40)
shopModule:addBuyableItem({'longsword'}, 					Cflongsword, 160)
shopModule:addBuyableItem({'sword'}, 					Cfsword, 85)
shopModule:addBuyableItem({'machete'}, 					Cfmachete, 35)
shopModule:addBuyableItem({'throwing knife'}, 					Cfthrowingknife, 25)
shopModule:addBuyableItem({'chain armor'}, 					Cfchainarmor, 200)
shopModule:addBuyableItem({'brass armor'}, 					Cfbrassarmor, 450)
shopModule:addBuyableItem({'leather armor'}, 					Cfleatherarmor, 35)
shopModule:addBuyableItem({'chain helmet'}, 					Cfchainhelmet, 52)
shopModule:addBuyableItem({'leather helmet'}, 					Cfleatherhelmet, 12)
shopModule:addBuyableItem({'steel shield'}, 					Cfsteelshield, 240)
shopModule:addBuyableItem({'wooden shield'}, 					Cfwoodenshield, 15)
shopModule:addBuyableItem({'chain legs'}, 					Cfchainlegs, 80)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell weapons, shields, and armor, and teach protective spells."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Shanar Ethkal."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin is quite close and we have some trade now and then."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is a town of humans far away."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Those human merchants try to sell their low quality weapons and armor here to ruin my trade."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is some human who lives in a stone house in the south of the town."})
keywordHandler:addKeyword({'olrik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This human is sneaking around in the tow far too often."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's our race, so what?"})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ugly and dirty."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Loud and noisy."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I own only a few."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Idiots."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That's my caste."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Squirrels"})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They don't live here."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't know much about them"})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A danger to all."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't care about gods."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Perhaps more than a myth."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nothing I want to talk about."})
keywordHandler:addKeyword({'druid'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Druids are great healers."})
keywordHandler:addKeyword({'sorcerer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "They understand so few..."})
keywordHandler:addKeyword({'magic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach some spells of protection."})
keywordHandler:addKeyword({'spell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I teach 'Poison Field', 'Fire Field', 'Energy Field', 'Poison Wall', 'Fire wall', and 'Energy Wall'."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have spears, swords, rapiers, daggers, longswords, machetes, staffs, and sabres. Interested?"})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather helmets and chain helmets. Anything you'd like to buy?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather, chain, and brass armor. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields and steel shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'spellbook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have none here."})

npcHandler:addModule(FocusModule:new())
