DROP DATABASE IF EXISTS `Vanguard_Sets`;
CREATE DATABASE `Vanguard_Sets`;
USE `Vanguard_Sets`;


CREATE TABLE booster_sets (
set_id INT NOT NULL AUTO_INCREMENT,
set_code VARCHAR(50),
set_name VARCHAR(255),
set_rates VARCHAR(50),
ppb int not null,
card_amount int not null,
PRIMARY KEY (set_id)
);

INSERT INTO booster_sets (set_code, set_name, set_rates, ppb, card_amount)
VALUES
('VG-BT01', 'Descent_of_the_King_of_Knights', 'OG', 30, 80),
('VG-BT02', 'Onslaught_of_Dragon_Souls', 'OG', 30, 80),
('VG-BT03', 'Demonic_Lord_Invasion', 'OG', 30 , 80),
('VG-BT04', 'Eclipse_of_Illusionary_Shadows', 'OG' , 30 , 80),
('VG-BT05', 'Awakening_of_Twin_Blades', 'OG', 30 , 80),
('VG-BT06', 'Breaker_of_Limits', 'OG' , 30 , 102),
('VG-BT07', 'Rampage_of_the_Beast_King', 'OG' , 30 , 102),
('VG-BT08', 'Blue_Storm_Armada', 'OG' , 30 , 102),
('VG-BT09', 'Clash_of_the_Knights_&_Dragons', 'OG' , 30 , 102),
('VG-BT10', 'Triumphant_Return_of_the_King_of_Knights', 'OG' , 30 , 102),
('VG-BT11', 'Seal_Dragons_Unleashed', 'OG' , 30 , 102),
('VG-V-BT06', 'Phantasmal_Steed_Restoration', 'V', 16, 84);


CREATE TABLE Descent_of_the_King_of_Knights (
card_id INT NOT NULL AUTO_INCREMENT,
card_code VARCHAR(50),
card_name VARCHAR(255),
card_type VARCHAR(50),
card_rarity VARCHAR(50),
card_img VARCHAR(255),
PRIMARY KEY (card_id)
);


INSERT INTO Descent_of_the_King_of_Knights (card_code, card_name, card_type ,card_rarity,card_img)
VALUES
('BT01/001', 'King of knights, Alfred', 'Normal', "RRR", "KingofKnightsAlfred.jpg"),
('BT01/002', 'Blaster Blade', 'Normal', "RRR", "BlasterBlade.jpg"),
('BT01/003', 'Barcgal', 'Normal', "RRR", "Barcgal.jpg"),
('BT01/004', 'Dragonic Overlord', 'Normal', "RRR", "DragonicOverlord.jpg"),
('BT01/005', 'Embodiment of Victory, Aleph', 'Normal', "RRR", "EmbodimentofVictoryAleph.jpg"),
('BT01/006', 'CEO Amaterasu', 'Normal', "RRR", "CEOAmaterasu.jpg"),
('BT01/007', 'Battle Sister, Cocoa', 'Normal', "RRR", "BattleSisterCocoa.jpg"),
('BT01/008', 'Asura Kaiser', 'Normal', "RRR", "AsuraKaiser.jpg"),
('BT01/009', 'Demon Slaying Knight, Lohengrin', 'Normal', "RR", "DemonSlayingKnightLohengrin.jpg"),
('BT01/010', 'Solitary Knight, Gancelot', 'Normal', "RR", "SolitaryKnightGancelot.jpg"),
('BT01/011', 'Flash Shield, Iseult', 'Normal', "RR", "FlashShieldIseult.jpg"),
('BT01/012', 'Future Knight, Llew', 'Trigger', "RR", "FutureKnightLlew.jpg"),
('BT01/013', 'Vortex Dragon', 'Normal', "RR", "VortexDragon.jpg"),
('BT01/014', 'Dragon Knight, Aleph', 'Normal', "RR", "DragonKnightAleph.jpg"),
('BT01/015', 'Wyvern Guard, Barri', 'Normal', "RR", "WyvernGuardBarri.jpg"),
('BT01/016', 'Lizard Soldier, Conroe', 'Normal', "RR", "LizardSoldierConroe.jpg"),
('BT01/017', 'Maiden of Libra', 'Normal', "RR", "MaidenofLibra.jpg"),
('BT01/018', 'Battle Sister, Mocha', 'Normal', "RR", "BattleSisterMocha.jpg"),
('BT01/019', 'Battle Sister, Chocolat', 'Normal', "RR", "BattleSisterChocolat.jpg"),
('BT01/020', 'Juggernaut Maximum', 'Normal', "RR", "JuggernautMaximum.jpg"),
('BT01/021', 'Knight of Silence, Gallatin', 'Normal', "R", "KnightofSilenceGallatin.jpg"),
('BT01/022', 'Dragon Knight, Nehalem', 'Normal', "R", "DragonKnightNehalem.jpg"),
('BT01/023', 'Wyvern Strike, Tejas', 'Normal', "R", "WyvernStrikeTejas.jpg"),
('BT01/024', 'Embodiment of Spear, Tahr', 'Trigger', "R", "EmbodimentofSpearTahr.jpg"),
('BT01/025', 'Oracle Guardian, Apollon', 'Normal', "R", "OracleGuardianApollon.jpg"),
('BT01/026', 'Oracle Guardian, Wiseman', 'Normal', "R", "OracleGuardianWiseman.jpg"),
('BT01/027', 'Lozenge Magus', 'Trigger', "R", "LozengeMagus.jpg"),
('BT01/028', 'Mr. Invincible', 'Normal', "R", "MrInvincible.jpg"),
('BT01/029', 'Brutal Jack', 'Normal', "R", "BrutalJack.jpg"),
('BT01/030', 'King of Sword', 'Normal', "R", "KingofSword.jpg"),
('BT01/031', 'Queen of Heart', 'Normal', "R","QueenofHeart.jpg"),
('BT01/032', 'Battleraizer', 'Trigger', "R", "Battleraizer.jpg"),
('BT01/033', 'Tyrant, Deathrex', 'Normal', "R", "TyrantDeathrex.jpg"),
('BT01/034', 'Assault Dragon, Blightops', 'Normal', "R", "AssaultDragonBlightops.jpg"),
('BT01/035', 'Stealth Dragon, Voidmaster', 'Normal', "R", "StealthDragonVoidmaster.jpg"),
('BT01/036', 'Demon Eater', 'Normal', "R", "DemonEater.jpg"),
('BT01/037', 'Monster Frank', 'Normal', "R", "MonsterFrank.jpg"),
('BT01/038', 'Commodore Blueblood', 'Normal', "R","CommodoreBlueblood.jpg"),
('BT01/039', 'Hell Spider', 'Normal', "R", "HellSpider.jpg"),
('BT01/040', 'Bloody Hercules', 'Normal', "R", "BloodyHercules.jpg"),
('BT01/041', 'Covenant Knight, Randolf', 'Normal', "C", "CovenantKnightRandolf.jpg"),
('BT01/042', 'Little Sage, Marron', 'Normal', "C", "LittleSageMarron.jpg"),
('BT01/043', 'Lake Maiden, Lien', 'Normal', "C","LakeMaidenLien.jpg"),
('BT01/044', 'Wingal', 'Normal', "C", "Wingal.jpg"),
('BT01/045', 'Weapons Dealer, Govannon', 'Trigger', "C", "WeaponsDealerGovannon.jpg"),
('BT01/046', 'Flogal', 'Trigger', "C", "Flogal.jpg"),
('BT01/047', 'Yggdrasil Maiden, Elaine', 'Trigger', "C", "YggdrasilMaidenElaine.jpg"),
('BT01/048', 'Embodiment of Armor, Bahr', 'Normal', "C", "EmbodimentofArmorBahr.jpg"),
('BT01/049', 'Dragon Monk, Gojo', 'Normal', "C", "DragonMonkGojo.jpg"),
('BT01/050', 'Wyvern Strike, Jarran', 'Normal', "C", "WyvernStrikeJarran.jpg"),
('BT01/051', 'Dragon Dancer, Monica', 'Trigger', "C", "DragonDancerMonica.jpg"),
('BT01/052', 'Lizard Soldier, Ganlu', 'Trigger', "C", "LizardSoldierGanlu.jpg"),
('BT01/053', 'Dragon Monk, Genjo', 'Trigger', "C", "DragonMonkGojo.jpg"),
('BT01/054', 'Oracle Guardian, Gemini', 'Normal', "C", "OracleGuardianGemini.jpg"),
('BT01/055', 'Weather Girl, Milk', 'Normal', "C", "WeatherGirlMilk.jpg"),
('BT01/056', 'Oracle Guardian, Nike', 'Trigger', "C","OracleGuardianNike.jpg"),
('BT01/057', 'Dream Eater', 'Trigger', "C","DreamEater.jpg"),
('BT01/058', 'Miracle Kid', 'Trigger', "C","MiracleKid.jpg"),
('BT01/059', 'Hungry Dumpty', 'Normal', "C","HungryDumpty.jpg"),
('BT01/060', 'Tough Boy', 'Normal', "C", "ToughBoy.jpg"),
('BT01/061', 'Screamin and Dancin Announcer, Shout', 'Normal', "C", "ScreaminandDancinAnnouncerShout.jpg"),
('BT01/062', 'Clay-doll Mechanic', 'Normal', "C", "Clay-dollMechanic.jpg"),
('BT01/063', 'Shining Lady', 'Trigger', "C", "ShiningLady.jpg"),
('BT01/064', 'Lucky Girl', 'Trigger', "C", "LuckyGirl.jpg"),
('BT01/065', 'Ring Girl, Clara', 'Trigger', "C", "RingGirlClara.jpg"),
('BT01/066', 'Sonic Noa', 'Normal', "C", "SonicNoa.jpg"),
('BT01/067', 'Ironclad Dragon, Shieldon', 'Normal', "C", "IroncladDragonShieldon.jpg"),
('BT01/068', 'Stealth Beast, Chigasumi', 'Normal', "C", "StealthBeastChigasumi.jpg"),
('BT01/069', 'Stealth Dragon, Dreadmaster', 'Normal', "C", "StealthDragonDreadmaster.jpg"),
('BT01/070', 'Stealth Beast, Hagakure', 'Normal', "C", "StealthBeastHagakure.jpg"),
('BT01/071', 'Blue Dust', 'Normal', "C", "BlueDust.jpg"),
('BT01/072', 'Nightmare Baby', 'Normal', "C", "NightmareBaby.jpg"),
('BT01/073', 'Rock the Wall', 'Normal', "C", "RocktheWall.jpg"),
('BT01/074', 'Highspeed, Brakki', 'Normal', "C","HighspeedBrakki.jpg"),
('BT01/075', 'Wonder Boy', 'Normal', "C","WonderBoy.jpg"),
('BT01/076', 'Redshoe, Milly', 'Normal', "C","RedshoeMilly.jpg"),
('BT01/077', 'Dandy Guy, Romario', 'Normal', "C","DandyGuyRomario.jpg"),
('BT01/078', 'Guiding Zombie', 'Normal', "C","GuidingZombie.jpg"),
('BT01/079', 'Karma Queen', 'Normal', "C","KarmaQueen.jpg"),
('BT01/080', 'Madame Mirage', 'Normal', "C","MadameMirage.jpg");



CREATE TABLE Onslaught_of_Dragon_Souls (
card_id INT NOT NULL AUTO_INCREMENT,
card_code VARCHAR(50),
card_name VARCHAR(255),
card_type VARCHAR(50),
card_rarity VARCHAR(50),
card_img VARCHAR(255),
PRIMARY KEY (card_id)
);


INSERT INTO Onslaught_of_Dragon_Souls (card_code, card_name, card_type ,card_rarity,card_img)
VALUES
('BT02/001', 'Sky Diver', 'Normal', "RRR", "SkyDiver.jpg"),
('BT02/002', 'Spirit Exceed', 'Normal', "RRR", "SpiritExceed.jpg"),
('BT02/003', 'Ruin Shade', 'Normal', "RRR", "RuinShade.jpg"),
('BT02/004', 'Soul Saver Dragon', 'Normal', "RRR", "SoulSaverDragon.jpg"),
('BT02/005', 'Blazing Flare Dragon', 'Normal', "RRR", "BlazingFlareDragon.jpg"),
('BT02/006', 'Seal Dragon, Blockade', 'Normal', "RRR", "SealDragonBlockade.jpg"),
('BT02/007', 'Scarlet Witch, CoCo', 'Normal', "RRR", "ScarletWitchCoCo.jpg"),
('BT02/008', 'Lion Heat', 'Normal', "RRR", "LionHeat.jpg"),
('BT02/009', 'General Seifried', 'Normal', "RR", "GeneralSeifried.jpg"),
('BT02/010', 'Cheer Girl, Marilyn', 'Normal', "RR", "CheerGirlMarilyn.jpg"),
('BT02/011', 'King of Demonic Seas, Basskirk', 'Normal', "RR", "KingofDemonicSeasBasskirk.jpg"),
('BT02/012', 'Witch Doctor of the Abyss, Negromarl', 'Normal', "RR", "WitchDoctoroftheAbyssNegromarl.jpg"),
('BT02/013', 'Captain Nightmist', 'Normal', "RR", "CaptainNightmist.jpg"),
('BT02/014', 'Gust Jinn', 'Normal', "RR", "GustJinn.jpg"),
('BT02/015', 'Young Pegasus Knight', 'Normal', "RR", "YoungPegasusKnight.jpg"),
('BT02/016', 'Chain-attack Sutherland', 'Normal', "RR", "ChainattackSutherland.jpg"),
('BT02/017', 'Silent Tom', 'Normal', "RR", "SilentTom.jpg"),
('BT02/018', 'Magician Girl, Kirara', 'Normal', "RR", "MagicianGirlKirara.jpg"),
('BT02/019', 'Twin Blader', 'Normal', "RR", "TwinBlader.jpg"),
('BT02/020', 'Top Idol, Flores', 'Normal', "RR", "TopIdolFlores.jpg"),
('BT02/021', 'Unite Attacker', 'Normal', "R", "UniteAttacker.jpg"),
('BT02/022', 'Treasured, Black Panther', 'Normal', "R", "TreasuredBlackPanther.jpg"),
('BT02/023', 'Dudley Dan', 'Normal', "R", "DudleyDan.jpg"),
('BT02/024', 'Mecha Trainer', 'Normal', "R", "MechaTrainer.jpg"),
('BT02/025', 'Dancing Cutlass', 'Normal', "R", "DancingCutlass.jpg"),
('BT02/026', 'Chappie the Ghostie', 'Normal', "R", "ChappietheGhostie.jpg"),
('BT02/027', 'Gigantech Charger', 'Normal', "R", "GigantechCharger.jpg"),
('BT02/028', 'Great Sage, Barron', 'Normal', "R", "GreatSageBarron.jpg"),
('BT02/029', 'High Dog Breeder, Akane', 'Normal', "R", "HighDogBreederAkane.jpg"),
('BT02/030', 'Pongal', 'Normal', "R", "Pongal.jpg"),
('BT02/031', 'Blazing Core Dragon', 'Normal', "R","BlazingCoreDragon.jpg"),
('BT02/032', 'Demonic Dragon Mage, Kimnara', 'Trigger', "R", "DemonicDragonMageKimnara.jpg"),
('BT02/033', 'Luck Bird', 'Normal', "R", "LuckBird.jpg"),
('BT02/034', 'Winged Dragon, Skyptero', 'Normal', "R", "WingedDragonSkyptero.jpg"),
('BT02/035', 'Dragon Egg', 'Normal', "R", "DragonEgg.jpg"),
('BT02/036', 'Top Idol, Aqua', 'Normal', "R", "TopIdolAqua.jpg"),
('BT02/037', 'Bermuda Triangle Cadet, Caravel', 'Normal', "R", "BermudaTriangleCadetCaravel.jpg"),
('BT02/038', 'Master Fraude', 'Normal', "R","MasterFraude.jpg"),
('BT02/039', 'Scientist Monkey Rue', 'Normal', "R", "ScientistMonkeyRue.jpg"),
('BT02/040', 'Geograph Giant', 'Normal', "R", "GeographGiant.jpg"),
('BT02/041', 'Panzer Gale', 'Normal', "C", "PanzerGale.jpg"),
('BT02/042', 'Devil Summoner', 'Normal', "C", "DevilSummoner.jpg"),
('BT02/043', 'Cyclone Blitz', 'Normal', "C","CycloneBlitz.jpg"),
('BT02/044', 'Spike Brothers Assault Squad', 'Normal', "C", "SpikeBrothersAssaultSquad.jpg"),
('BT02/045', 'Sonic Breaker', 'Trigger', "C", "SonicBreaker.jpg"),
('BT02/046', 'Cheerful Lynx', 'Trigger', "C", "CheerfulLynx.jpg"),
('BT02/047', 'Cheer Girl, Tiara', 'Trigger', "C", "CheerGirlTiara.jpg"),
('BT02/048', 'Silence Joker', 'Trigger', "C", "SilenceJoker.jpg"),
('BT02/049', 'Skeleton Swordsman', 'Normal', "C", "SkeletonSwordsman.jpg"),
('BT02/050', 'Samurai Spirit', 'Normal', "C", "SamuraiSpirit.jpg"),
('BT02/051', 'Evil Shade', 'Normal', "C", "EvilShade.jpg"),
('BT02/052', 'Knight Spirit', 'Trigger', "C", "KnightSpirit.jpg"),
('BT02/053', 'Skeleton Lookout', 'Trigger', "C", "SkeletonLookout.jpg"),
('BT02/054', 'Rick the Ghostie', 'Trigger', "C", "RicktheGhostie.jpg"),
('BT02/055', 'Rough Seas Banshee', 'Trigger', "C", "RoughSeasBanshee.jpg"),
('BT02/056', 'Knight of Truth, Gordon', 'Normal', "C","KnightofTruthGordon.jpg"),
('BT02/057', 'Soul Guiding Elf', 'Normal', "C","SoulGuidingElf.jpg"),
('BT02/058', 'Pixy Fife and Drum', 'Trigger', "C","PixyFifeandDrum.jpg"),
('BT02/059', 'Margal', 'Trigger', "C","Margal.jpg"),
('BT02/060', 'Dragon Knight, Berger', 'Normal', "C", "DragonKnightBerger.jpg"),
('BT02/061', 'Iron Tail Dragon', 'Normal', "C", "IronTailDragon.jpg"),
('BT02/062', 'Follower, Reas', 'Normal', "C", "FollowerReas.jpg"),
('BT02/063', 'Lizard Runner, Nafd', 'Trigger', "C", "LizardRunnerNafd.jpg"),
('BT02/064', 'Gattling Claw Dragon', 'Trigger', "C", "GattlingClawDragon.jpg"),
('BT02/065', 'Security Guardian', 'Normal', "C", "SecurityGuardian.jpg"),
('BT02/066', 'One Who Gazes at the Truth', 'Normal', "C", "OneWhoGazesattheTruth.jpg"),
('BT02/067', 'Emergency Alarmer', 'Trigger', "C", "EmergencyAlarmer.jpg"),
('BT02/068', 'Psychic Bird', 'Trigger', "C", "PsychicBird.jpg"),
('BT02/069', 'Chaos Dragon, Dinochaos', 'Normal', "C", "ChaosDragonDinochaos.jpg"),
('BT02/070', 'Cannon Fire Dragon, Cannon Gear', 'Normal', "C", "CannonFireDragonCannonGear.jpg"),
('BT02/071', 'NGM Prototype', 'Normal', "C", "NGMPrototype.jpg"),
('BT02/072', 'Cray Soldier', 'Normal', "C", "CraySoldier.jpg"),
('BT02/073', 'Three Minutes', 'Trigger', "C", "ThreeMinutes.jpg"),
('BT02/074', 'Red Lightning', 'Trigger', "C","RedLightning.jpg"),
('BT02/075', 'Blazer Idols', 'Normal', "C","BlazerIdols.jpg"),
('BT02/076', 'Lady Bomb', 'Normal', "C","LadyBomb.jpg"),
('BT02/077', 'Phantom Black', 'Normal', "C","PhantomBlack.jpg"),
('BT02/078', 'Megacolony Battler A', 'Normal', "C","MegacolonyBattlerA.jpg"),
('BT02/079', 'Silver Wolf', 'Normal', "C","SilverWolf.jpg"),
('BT02/080', 'Intelli-mouse', 'Normal', "C","Intelli-mouse.jpg");


CREATE TABLE Phantasmal_Steed_Restoration (
card_id INT NOT NULL AUTO_INCREMENT,
card_code VARCHAR(50),
card_name VARCHAR(255),
card_type VARCHAR(50),
card_rarity VARCHAR(50),
card_img VARCHAR(255),
PRIMARY KEY (card_id)
);


INSERT INTO Phantasmal_Steed_Restoration (card_code, card_name, card_type ,card_rarity,card_img)
VALUES
('V-BT06/001', 'Illusionary Revenger, Mordred Phantom', 'Normal', "VR", "IllusionaryRevengerMordredPhantom.jpg"),
('V-BT06/002', 'Nullity Revenger, Masquerade', 'Normal', "VR", "NullityRevengerMasquerade.jpg"),
('V-BT06/003', 'Samurai Chieftain, HYU-GA', 'Normal', "VR", "SamuraiChieftainHYU-GA.jpg"),
('V-BT06/004', 'Demonic Deep Phantasm Emperor, Brufas', 'Normal', "VR", "DemonicDeepPhantasmEmperorBrufas.jpg"),
('V-BT06/005', 'Silver Thorn Dragon Tamer, Luquier', 'Normal', "VR", "SilverThornDragonTamerLuquier.jpg"),
('V-BT06/006', 'Danger-lunge Dragon', 'Normal', "RRR", "Danger-lungeDragon.jpg"),
('V-BT06/007', 'Transient Revenger, Masquerade', 'Normal', "RRR", "TransientRevengerMasquerade.jpg"),
('V-BT06/008', 'Covert Demonic Dragon, Hyakki Vogue', 'Normal', "RRR", "CovertDemonicDragonHyakkiVogue.jpg"),
('V-BT06/009', 'Stealth Beast, Spell Hound', 'Normal', "RRR", "StealthBeastSpellHound.jpg"),
('V-BT06/010', 'Emblem Master', 'Normal', "RRR", "EmblemMaster.jpg"),
('V-BT06/011', 'Yellow Bolt', 'Normal', "RRR", "Yellow Bolt.jpg"),
('V-BT06/012', 'Silver Thorn Marionette, Lilian', 'Normal', "RRR", "SilverThornMarionetteLilian.jpg"),
('V-BT06/013', 'Silver Thorn Assistant, Irina', 'Normal', "RRR", "SilverThornAssistantIrina.jpg"),
('V-BT06/014', 'Barrier Troop Revenger, Dorint', 'Normal', "RR", "BarrierTroopRevengerDorint.jpg"),
('V-BT06/015', 'Wily Revenger, Mana', 'Normal', "RR", "WilyRevengerMana.jpg"),
('V-BT06/016', 'Frontline Revenger, Claudas', 'Normal', "RR", "FrontlineRevengerClaudas.jpg"),
('V-BT06/017', 'Central Arrester', 'Normal', "RR", "CentralArrester.jpg"),
('V-BT06/018', 'Special Stealth Beast, Weasel Red', 'Normal', "RR", "SpecialStealthBeastWeaselRed.jpg"),
('V-BT06/019', 'Stealth Rogue of Summoning, Jiraiya', 'Normal', "RR", "StealthRogueofSummoningJiraiya.jpg"),
('V-BT06/020', 'Number of Terror', 'Normal', "RR", "NumberofTerror.jpg"),
('V-BT06/021', 'Hope on Damp', 'Normal', "RR", "HopeonDamp.jpg"),
('V-BT06/022', 'Wertiger Jaeger', 'Normal', "RR", "WertigerJaeger.jpg"),
('V-BT06/023', 'Nightmare Doll, Carroll', 'Normal', "RR", "NightmareDollCarroll.jpg"),
('V-BT06/024', 'Miracle Pop, Eva', 'Normal', "RR", "MiraclePopEva.jpg"),
('V-BT06/025', 'Silver Thorn, Breathing Dragon', 'Normal', "RR", "SilverThornBreathingDragon.jpg"),
('V-BT06/026', 'Knight of Severity, Dubdrenn', 'Normal', "R", "KnightofSeverityDubdrenn.jpg"),
('V-BT06/027', 'Gloomy Crescent', 'Normal', "R", "GloomyCrescent.jpg"),
('V-BT06/028', 'Mage of Intensity, Math', 'Normal', "R", "MageofIntensityMath.jpg"),
('V-BT06/029', 'Knight of Authority, Demne', 'Normal', "R", "KnightofAuthorityDemne.jpg"),
('V-BT06/030', 'Witch of Extirpation, Bheara', 'Normal', "R", "WitchofExtirpationBheara.jpg"),
('V-BT06/031', 'Lacerate Crescent', 'Normal', "R","LacerateCrescent.jpg"),
('V-BT06/032', 'Stealth Fiend, One-Eyed Nyudo', 'Normal', "R", "StealthFiendOneEyedNyudo.jpg"),
('V-BT06/032', 'Stealth Fiend, One-Eyed Nyudo', 'Normal', "R", "StealthFiendOneEyedNyudo.jpg"),
('V-BT06/033', 'Special Stealth Beast, Weasel Yellow', 'Normal', "R", "SpecialStealthBeastWeaselYellow.jpg"),
('V-BT06/034', 'Stealth Fiend, Kirifubuki', 'Normal', "R", "StealthFiendKirifubuki.jpg"),
('V-BT06/035', 'Variants Dragform', 'Normal', "R", "VariantsDragform.jpg"),
('V-BT06/036', 'Variants Shutarm', 'Normal', "R", "VariantsShutarm.jpg"),
('V-BT06/037', 'Appalling Thread', 'Normal', "R", "AppallingThread.jpg"),
('V-BT06/038', 'Variants Killertail', 'Normal', "R","VariantsKillertail.jpg"),
('V-BT06/039', 'Silver Thorn Beast Tamer, Doriane', 'Normal', "R", "SilverThornBeastTamerDoriane.jpg"),
('V-BT06/040', 'Nightmare Doll, Elin', 'Normal', "R", "NightmareDollElin.jpg"),
('V-BT06/041', 'Silver Thorn Conjurer, Romy', 'Normal', "R", "SilverThornConjurerRomy.jpg"),
('V-BT06/042', 'Delude Dancer, Ethel', 'Normal', "R", "DeludeDancerEthel.jpg"),
('V-BT06/043', 'Fiend Light of Insincerity, Sechnaill', 'Normal', "C","FiendLightofInsinceritySechnaill.jpg"),
('V-BT06/044', 'Gigantech Enforcer', 'Normal', "C", "GigantechEnforcer.jpg"),
('V-BT06/045', 'Coolbau', 'Normal', "C", "Coolbau.jpg"),
('V-BT06/046', 'Demon World Castle, Endefort', 'Normal', "C", "DemonWorldCastleEndefort.jpg"),
('V-BT06/047', 'Shadowshifter Dragon', 'Normal', "C", "ShadowshifterDragon.jpg"),
('V-BT06/048', 'Crisis Revenger, Fritz', 'Normal', "C", "CrisisRevengerFritz.jpg"),
('V-BT06/049', 'Grim Revenger', 'Trigger', "C", "GrimRevenger.jpg"),
('V-BT06/050', 'DeathFeatherEagle', 'Trigger', "C", "DeathFeatherEagle.jpg"),
('V-BT06/051', 'Howl Owl', 'Trigger', "C", "HowlOwl.jpg"),
('V-BT06/052', 'Abyss Healer', 'Trigger', "C", "AbyssHealer.jpg"),
('V-BT06/053', 'Stealth Fiend, Ogrespider', 'Normal', "C", "StealthFiendOgrespider.jpg"),
('V-BT06/054', 'Special Stealth Beast, Weasel Blue', 'Normal', "C", "SpecialStealthBeastWeaselBlue.jpg"),
('V-BT06/055', 'Stealth Rogue of Break Smash, Miyako', 'Normal', "C", "StealthRogueofBreakSmashMiyako.jpg"),
('V-BT06/056', 'Special Stealth Beast, Weasel White', 'Normal', "C","SpecialStealthBeastWeaselWhite.jpg"),
('V-BT06/057', 'Stealth Beast, Blazon Ape', 'Normal', "C","StealthBeastBlazonApe.jpg"),
('V-BT06/058', 'Stealth Rogue of Multitude, Sanjee', 'Normal', "C","StealthRogueofMultitudeSanjee.jpg"),
('V-BT06/059', 'Masago Stealth Rogue, Goemon', 'Normal', "C","MasagoStealthRogueGoemon.jpg"),
('V-BT06/060', 'Dark Knight Stealth Rogue, Clogg', 'Trigger', "C", "DarkKnightStealthRogueClogg.jpg"),
('V-BT06/061', 'Stealth Beast, Cat Rouge', 'Trigger', "C", "StealthBeastCatRouge.jpg"),
('V-BT06/062', 'Uptrend Stealth Rogue, Kyuichi', 'Trigger', "C", "UptrendStealthRogueKyuichi.jpg"),
('V-BT06/063', 'Stealth Fiend, Yukihime', 'Trigger', "C", "StealthFiendYukihime.jpg"),
('V-BT06/064', 'Rigor Twister', 'Normal', "C", "RigorTwister.jpg"),
('V-BT06/065', 'Icicle Resistant', 'Normal', "C", "IcicleResistant.jpg"),
('V-BT06/066', 'Variants Hardleg', 'Normal', "C", "VariantsHardleg.jpg"),
('V-BT06/067', 'Evileye Artist', 'Normal', "C", "EvileyeArtist.jpg"),
('V-BT06/068', 'Warlike Poisoner', 'Normal', "C", "WarlikePoisoner.jpg"),
('V-BT06/069', 'Variants Megawing', 'Normal', "C", "VariantsMegawing.jpg"),
('V-BT06/070', 'Devil in Shadow', 'Normal', "C", "DevilinShadow.jpg"),
('V-BT06/071', 'Dark Knight of Nightmareland', 'Trigger', "C", "DarkKnightofNightmareland.jpg"),
('V-BT06/072', 'Blitzritter', 'Trigger', "C", "Blitzritter.jpg"),
('V-BT06/073', 'Hysteric Shirley', 'Trigger', "C", "HystericShirley.jpg"),
('V-BT06/074', 'Cursed Doctor', 'Trigger', "C","CursedDoctor.jpg"),
('V-BT06/075', 'Silver Thorn, Rising Dragon', 'Normal', "C","SilverThornRisingDragon.jpg"),
('V-BT06/076', 'Silver Thorn Beast Tamer, Shayda', 'Normal', "C","SilverThornBeastTamerShayda.jpg"),
('V-BT06/077', 'Deadknife Juggler', 'Normal', "C","DeadknifeJuggler.jpg"),
('V-BT06/078', 'Nightmare Doll, Beverley', 'Normal', "C","NightmareDollBeverley.jpg"),
('V-BT06/079', 'Explosion Clown', 'Normal', "C","ExplosionClown.jpg"),
('V-BT06/080', 'Silver Thorn Assistant, Ionela', 'Normal', "C","SilverThornAssistantIonela.jpg"),
('V-BT06/081', 'Silver Thorn, Barking Dragon', 'Trigger', "C","SilverThornBarkingDragon.jpg"),
('V-BT06/082', 'Rainbow Magician', 'Trigger', "C","RainbowMagician.jpg"),
('V-BT06/083', 'Silver Thorn Beast Tamer, Serge', 'Trigger', "C","SilverThornBeastTamerSerge.jpg"),
('V-BT06/084', 'Candy Clown', 'Trigger', "C","CandyClown.jpg");