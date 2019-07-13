///gets which song is supposed to be playing for the current room and plays it

var roomSong;
var loop = true;

switch (room)                       //determines which song to play
{
    case rTitle:
        roomSong = -1;
        break;
    case rAchievements:
    case rOptions:
        roomSong = global.sndOptions;
        break;
    case rStage1Chocko:
    case rExtraChocko:
    case rStage1GGM:
    case rStage1EnjoyTheGame:
    case rStage1CTB1:
    case rStage1MysHouse:
    case rStage1YellowStar:
    case rStage1DarkBlue:
    case rStage1Exp:
    case rStage1Fortress:
    case rStage1Fangame:
        roomSong = global.sndStage1; break;
    case rBoss1Volcano:
        roomSong = global.sndBoss1; break;
    case rStage2CTB2: 
    case rStage2DT: 
    case rStage2GreenMoon: 
    case rStage2Showdown: 
    case rStage2Green: 
    case rStage2Tribute: 
    case rStage2Yassan: 
    case rStage2RunTerminal:
    case rStage2BestGuy: 
        roomSong = global.sndStage2; break;
    case rStage2GuyTower:
    case rStage2GuyTower2:
         roomSong = global.sndStage2GuyTower; break;
    case rBoss1Save:    
    case rBoss2Save:
    case rBoss3Save:
    case rStage4KTGB:
    case rBoss4Save:
    case rStage5BoshyB:
    case rBoss5Save:
    case rExtraKTGA:
    case rExtraKTGB:
    case rExtraKTGC:
    case rExtraKTGD:
    case rExtraKTGE:
    case rExtraKTGF:
    case rExtraKTGG:
    case rExtraKTGI:
    case rExtraKTGJ:
    case rExtraKTGK:    
        roomSong = global.sndNone; break;
    case rBoss2Guy:
        roomSong = global.sndBoss2; break;
    case rStage3500:
    case rStage3Uhuhu:
    case rStage3Skyclad:
    case rStage3CQ:
    case rStage3Rukimin:
    case rStage3Diverse:
    case rStage3HeavenTrap:
    case rStage3SeeTheMoon:
    case rStage3WhiteCherry:
    case rStage3TimeMachine:
        roomSong = global.sndStage3; break;
    case rBoss3Phase1:
    case rBoss3Phase2:
    case rBoss3Phase3:
    case rBoss3Avoid1:
    case rBoss3Avoid2:
    case rBoss3Avoid3:
    case rBoss3Avoid4:
        roomSong = global.sndBoss3; 
        break;
    case rStage4Galaxy:
    case rStage4GB:
    case rStage4Phantom:
    case rStage4Device:
    case rStage4HeavenTrap:
    case rStage4ShinySparkA:
    case rStage4ShinySparkB:
    case rStage4ShinySparkC:
    case rStage4Conscience:
    case rStage4Explorer:
    case rStage4Competitor:
    case rStage4KTGA:
        roomSong = global.sndStage4; break;
    case rBoss4Phase1:
    case rBoss4Avoid:
    case rBoss4Phase2:
        roomSong = global.sndBoss4; break;
    case rStage5Color:
    case rStage5Scapegoat:
    case rStage5Symetry:
    case rStage5RainbowMiku:
    case rStage5Unknown:
    case rStage5BloodFestival:
    case rStage5Dieary:
    case rStage5PYF:
    case rStage5Locus:
    case rStage5Boshy:
    case rExtraSymetry:
    case rExtraRainbowMiku:
        roomSong = global.sndStage5; break;
    case rBoss5Phase1:
    case rBoss5Phase2:
    case rBoss5Phase3:
    case rBoss5Avoid:
        roomSong = global.sndBoss5; break;
    case rStage6GR:
    case rStage6DotKid:   
    case rStage6SevenTrials:
    case rStage6Sadist:
    case rStage6Catastrophe:
        roomSong = global.sndStage6; break
    case rStage6Crimson:
    case rStage6Destination:
    case rStage6BreakingOut:
    case rStage6Popularity:
    case rStage6LoveTrap:
         roomSong = global.sndStage62; break;
    
    case rStage6BossRush:
        roomSong = global.sndBossRush; break;
    case rBoss6Destination:
        roomSong = global.sndBossRushDestination; break;
    case rBoss6Crimson:
        roomSong = global.sndBossRushCrimson; break;
    case rBoss6Nue:
        roomSong = global.sndBossRushBreakingOut; break;
    case rBoss6GravityMan:
        roomSong = global.sndBossRushPopularity; break;
    case rBoss6Phase2:
        roomSong = global.sndBoss6B; break;
    case rStage7:
        roomSong = global.sndStage7; break;
    case rBoss7Phase1:
    case rBoss7Phase2:
        roomSong = global.sndBoss7A; break;
    case rBoss7Death:
        roomSong = global.sndDefeated; loop = false; break;
    case rEnding:
        roomSong = global.sndEnding; loop = false; break;
    case rPortal:
        roomSong = global.sndPortal; break;
    case rExStage1:
    case rExStage2:
    case rExStage3:
         roomSong = global.sndCollapse1; break;
    case rExStage4A:
    case rExStage4B:
    case rExStage5:
    case rExStage6:
         roomSong = global.sndCollapse2; break;
    case rExBoss1:
    case rExBoss2:
    case rExBoss3:
    case rExBoss4:
        roomSong = global.sndExtraBoss; break;
    case rExtraEscapeEntrance:
    case rExtraStage1:
    case rExtraStage2:
    case rExtraStage3:
    case rExtraStageWrong:
        roomSong = global.sndExtra; break;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,loop); //play the song for the current room
