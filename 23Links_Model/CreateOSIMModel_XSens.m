% CREATEOSIMMODELFROMSUBJECTPARAMS
% Script to create for each subject a file osim.

% remember to run FindParam.m before run this script
% remember to run tree_xml.m before run this script

load('subjectParams.mat');
load('pointsLocation.mat');

% NUM SUBJECT
subjectList = 1;

for subjectID = subjectList
    
    osimModelTemplate = fileread('XSensForcePlate_OSIMtemplate.osim');
    
    % FOOT
    osimModelTemplate = strrep(osimModelTemplate,'FOOTALFA',sprintf('%.10f',subjectParams(subjectID).footAlfa));
    osimModelTemplate = strrep(osimModelTemplate,'FOOTBETA',sprintf('%.10f',subjectParams(subjectID).footBeta));
    osimModelTemplate = strrep(osimModelTemplate,'FOOTGAMMA',sprintf('%.10f',subjectParams(subjectID).footGamma));
    osimModelTemplate = strrep(osimModelTemplate,'FOOTHALFBETA',sprintf('%.10f',subjectParams(subjectID).footHalfBeta));
    osimModelTemplate = strrep(osimModelTemplate,'FOOTHALFGAMMA',sprintf('%.10f',subjectParams(subjectID).footHalfGamma));
    osimModelTemplate = strrep(osimModelTemplate,'ANKLEPOSX',sprintf('%.10f',subjectParams(subjectID).anklePosX));
    osimModelTemplate = strrep(osimModelTemplate,'TOEPOSX',sprintf('%.10f',subjectParams(subjectID).toePosX));
    
    osimModelTemplate = strrep(osimModelTemplate,'FOOTMASS',sprintf('%.10f',subjectParams(subjectID).footMass));
    osimModelTemplate = strrep(osimModelTemplate,'FOOTINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).footIxx));
    osimModelTemplate = strrep(osimModelTemplate,'FOOTINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).footIyy));
    osimModelTemplate = strrep(osimModelTemplate,'FOOTINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).footIzz));

    % TOE
    osimModelTemplate = strrep(osimModelTemplate,'TOEALFA',sprintf('%.10f',subjectParams(subjectID).toeAlfa));
    osimModelTemplate = strrep(osimModelTemplate,'TOEBETA',sprintf('%.10f',subjectParams(subjectID).toeBeta));
    osimModelTemplate = strrep(osimModelTemplate,'TOEGAMMA',sprintf('%.10f',subjectParams(subjectID).toeGamma));
    osimModelTemplate = strrep(osimModelTemplate,'TOEHALFGAMMA',sprintf('%.10f',subjectParams(subjectID).toeHalfGamma));
    
    osimModelTemplate = strrep(osimModelTemplate,'TOEMASS',sprintf('%.10f',subjectParams(subjectID).toeMass));
    osimModelTemplate = strrep(osimModelTemplate,'TOEINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).toeIxx));
    osimModelTemplate = strrep(osimModelTemplate,'TOEINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).toeIyy));
    osimModelTemplate = strrep(osimModelTemplate,'TOEINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).toeIzz));
    
    % LOWER LEG
    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGHEIGHT',sprintf('%.10f',subjectParams(subjectID).lowerLegHeight));
    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGRADIUS',sprintf('%.10f',subjectParams(subjectID).lowerLegRadius));
    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGHALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).lowerLegHalfHeight));
    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGDIAMETER',sprintf('%.10f',subjectParams(subjectID).lowerLegDiameter));

    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGMASS',sprintf('%.10f',subjectParams(subjectID).lowerLegMass));
    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).lowerLegIxx));
    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).lowerLegIyy));
    osimModelTemplate = strrep(osimModelTemplate,'LOWERLEGINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).lowerLegIzz));

    % UPPER LEG
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGHEIGHT',sprintf('%.10f',subjectParams(subjectID).upperLegHeight));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGRADIUS',sprintf('%.10f',subjectParams(subjectID).upperLegRadius));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGDIAMETER',sprintf('%.10f',subjectParams(subjectID).upperLegDiameter));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGHALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).upperLegHalfHeight));
    osimModelTemplate = strrep(osimModelTemplate,'HIPPOSY',sprintf('%.10f',subjectParams(subjectID).HipPosY));
    osimModelTemplate = strrep(osimModelTemplate,'HIPDOUBLEPOSY',sprintf('%.10f',subjectParams(subjectID).HipDoublePosY));
    
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGMASS',sprintf('%.10f',subjectParams(subjectID).upperLegMass));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).upperLegIxx));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).upperLegIyy));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERLEGINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).upperLegIzz));

    % TORSO
    osimModelTemplate = strrep(osimModelTemplate,'TORSOALFA',sprintf('%.10f',subjectParams(subjectID).torsoAlfa));
    osimModelTemplate = strrep(osimModelTemplate,'TORSOBETA',sprintf('%.10f',subjectParams(subjectID).torsoBeta));
    osimModelTemplate = strrep(osimModelTemplate,'TORSOGAMMA',sprintf('%.10f',subjectParams(subjectID).torsoGamma));
    osimModelTemplate = strrep(osimModelTemplate,'TORSOHALFBETA',sprintf('%.10f',subjectParams(subjectID).torsoHalfBeta));
 
    osimModelTemplate = strrep(osimModelTemplate,'TORSOMASS',sprintf('%.10f',subjectParams(subjectID).torsoMass));
    osimModelTemplate = strrep(osimModelTemplate,'TORSOINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).torsoIxx));
    osimModelTemplate = strrep(osimModelTemplate,'TORSOINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).torsoIyy));
    osimModelTemplate = strrep(osimModelTemplate,'TORSOINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).torsoIzz));
    
    % PELVIS
    osimModelTemplate = strrep(osimModelTemplate,'PELVISALFA',sprintf('%.10f',subjectParams(subjectID).pelvisAlfa));
    osimModelTemplate = strrep(osimModelTemplate,'PELVISBETA',sprintf('%.10f',subjectParams(subjectID).pelvisBeta));
    osimModelTemplate = strrep(osimModelTemplate,'PELVISGAMMA',sprintf('%.10f',subjectParams(subjectID).pelvisGamma));
    osimModelTemplate = strrep(osimModelTemplate,'PELVISHALFBETA',sprintf('%.10f',subjectParams(subjectID).pelvisHalfBeta));
 
    osimModelTemplate = strrep(osimModelTemplate,'PELVISMASS',sprintf('%.10f',subjectParams(subjectID).pelvisMass));
    osimModelTemplate = strrep(osimModelTemplate,'PELVISINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).pelvisIxx));
    osimModelTemplate = strrep(osimModelTemplate,'PELVISINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).pelvisIyy));
    osimModelTemplate = strrep(osimModelTemplate,'PELVISINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).pelvisIzz));
    
    % L5
    osimModelTemplate = strrep(osimModelTemplate,'L5HEIGHT',sprintf('%.10f',subjectParams(subjectID).L5Height));
    osimModelTemplate = strrep(osimModelTemplate,'L5RADIUSX',sprintf('%.10f',subjectParams(subjectID).L5RadiusX));
    osimModelTemplate = strrep(osimModelTemplate,'L5DIAMETERX',sprintf('%.10f',subjectParams(subjectID).L5DiameterX));
    osimModelTemplate = strrep(osimModelTemplate,'L5RADIUSY',sprintf('%.10f',subjectParams(subjectID).L5RadiusY));
    osimModelTemplate = strrep(osimModelTemplate,'L5DIAMETERY',sprintf('%.10f',subjectParams(subjectID).L5DiameterY));
    osimModelTemplate = strrep(osimModelTemplate,'L5HALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).L5HalfHeight));

    osimModelTemplate = strrep(osimModelTemplate,'L5MASS',sprintf('%.10f',subjectParams(subjectID).L5Mass));
    osimModelTemplate = strrep(osimModelTemplate,'L5INERTIAIXX',sprintf('%.10f',subjectParams(subjectID).L5Ixx));
    osimModelTemplate = strrep(osimModelTemplate,'L5INERTIAIYY',sprintf('%.10f',subjectParams(subjectID).L5Iyy));
    osimModelTemplate = strrep(osimModelTemplate,'L5INERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).L5Izz));
    
    % L3
    osimModelTemplate = strrep(osimModelTemplate,'L3HEIGHT',sprintf('%.10f',subjectParams(subjectID).L3Height));
    osimModelTemplate = strrep(osimModelTemplate,'L3RADIUSX',sprintf('%.10f',subjectParams(subjectID).L3RadiusX));
    osimModelTemplate = strrep(osimModelTemplate,'L3DIAMETERX',sprintf('%.10f',subjectParams(subjectID).L3DiameterX));
    osimModelTemplate = strrep(osimModelTemplate,'L3RADIUSY',sprintf('%.10f',subjectParams(subjectID).L3RadiusY));
    osimModelTemplate = strrep(osimModelTemplate,'L3DIAMETERY',sprintf('%.10f',subjectParams(subjectID).L3DiameterY));
    osimModelTemplate = strrep(osimModelTemplate,'L3HALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).L3HalfHeight));

    osimModelTemplate = strrep(osimModelTemplate,'L3MASS',sprintf('%.10f',subjectParams(subjectID).L3Mass));
    osimModelTemplate = strrep(osimModelTemplate,'L3INERTIAIXX',sprintf('%.10f',subjectParams(subjectID).L3Ixx));
    osimModelTemplate = strrep(osimModelTemplate,'L3INERTIAIYY',sprintf('%.10f',subjectParams(subjectID).L3Iyy));
    osimModelTemplate = strrep(osimModelTemplate,'L3INERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).L3Izz));
    
    % T12
    osimModelTemplate = strrep(osimModelTemplate,'T12HEIGHT',sprintf('%.10f',subjectParams(subjectID).T12Height));
    osimModelTemplate = strrep(osimModelTemplate,'T12RADIUSX',sprintf('%.10f',subjectParams(subjectID).T12RadiusX));
    osimModelTemplate = strrep(osimModelTemplate,'T12DIAMETERX',sprintf('%.10f',subjectParams(subjectID).T12DiameterX));
    osimModelTemplate = strrep(osimModelTemplate,'T12RADIUSY',sprintf('%.10f',subjectParams(subjectID).T12RadiusY));
    osimModelTemplate = strrep(osimModelTemplate,'T12DIAMETERY',sprintf('%.10f',subjectParams(subjectID).T12DiameterY));
    osimModelTemplate = strrep(osimModelTemplate,'T12HALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).T12HalfHeight));

    osimModelTemplate = strrep(osimModelTemplate,'T12MASS',sprintf('%.10f',subjectParams(subjectID).T12Mass));
    osimModelTemplate = strrep(osimModelTemplate,'T12INERTIAIXX',sprintf('%.10f',subjectParams(subjectID).T12Ixx));
    osimModelTemplate = strrep(osimModelTemplate,'T12INERTIAIYY',sprintf('%.10f',subjectParams(subjectID).T12Iyy));
    osimModelTemplate = strrep(osimModelTemplate,'T12INERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).T12Izz));
    
    % T8
    osimModelTemplate = strrep(osimModelTemplate,'T8ALFA',sprintf('%.10f',subjectParams(subjectID).T8Alfa));
    osimModelTemplate = strrep(osimModelTemplate,'T8BETA',sprintf('%.10f',subjectParams(subjectID).T8Beta));
    osimModelTemplate = strrep(osimModelTemplate,'T8GAMMA',sprintf('%.10f',subjectParams(subjectID).T8Gamma));
    osimModelTemplate = strrep(osimModelTemplate,'T8HALFBETA',sprintf('%.10f',subjectParams(subjectID).T8HalfBeta));
    osimModelTemplate = strrep(osimModelTemplate,'T8HALFALFA',sprintf('%.10f',subjectParams(subjectID).T8HalfAlfa));
 
    osimModelTemplate = strrep(osimModelTemplate,'T8MASS',sprintf('%.10f',subjectParams(subjectID).T8Mass));
    osimModelTemplate = strrep(osimModelTemplate,'T8INERTIAIXX',sprintf('%.10f',subjectParams(subjectID).T8Ixx));
    osimModelTemplate = strrep(osimModelTemplate,'T8INERTIAIYY',sprintf('%.10f',subjectParams(subjectID).T8Iyy));
    osimModelTemplate = strrep(osimModelTemplate,'T8INERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).T8Izz));
    
    % SHOULDER
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERHEIGHT',sprintf('%.10f',subjectParams(subjectID).shoulderHeight));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERRADIUS',sprintf('%.10f',subjectParams(subjectID).shoulderRadius));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERDIAMETER',sprintf('%.10f',subjectParams(subjectID).shoulderDiameter));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERHALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).shoulderHalfHeight));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERPOSZ',sprintf('%.10f',subjectParams(subjectID).shoulderPosZ));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERURDFPOSZ',sprintf('%.10f',subjectParams(subjectID).shoulderUrdfPosZ));
    
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERMASS',sprintf('%.10f',subjectParams(subjectID).shoulderMass));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).shoulderIxx));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).shoulderIyy));
    osimModelTemplate = strrep(osimModelTemplate,'SHOULDERINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).shoulderIzz));

    % UPPER ARM
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMRADIUS',sprintf('%.10f',subjectParams(subjectID).upperArmRadius));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMDIAMETER',sprintf('%.10f',subjectParams(subjectID).upperArmDiameter));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMHEIGHT',sprintf('%.10f',subjectParams(subjectID).upperArmHeight));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMHALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).upperArmHalfHeight));
    osimModelTemplate = strrep(osimModelTemplate,'ARMPOSZ',sprintf('%.10f',subjectParams(subjectID).armPosZ));
    osimModelTemplate = strrep(osimModelTemplate,'ARMURDFPOSZ',sprintf('%.10f',subjectParams(subjectID).armUrdfPosZ));

    
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMMASS',sprintf('%.10f',subjectParams(subjectID).upperArmMass));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).upperArmIxx));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).upperArmIyy));
    osimModelTemplate = strrep(osimModelTemplate,'UPPERARMINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).upperArmIzz));
   
    % FORE ARM
    osimModelTemplate = strrep(osimModelTemplate,'FOREARMRADIUS',sprintf('%.10f',subjectParams(subjectID).foreArmRadius));
    osimModelTemplate = strrep(osimModelTemplate,'FOREARMDIAMETER',sprintf('%.10f',subjectParams(subjectID).foreArmDiameter));
    osimModelTemplate = strrep(osimModelTemplate,'FOREARMHEIGHT',sprintf('%.10f',subjectParams(subjectID).foreArmHeight));
    osimModelTemplate = strrep(osimModelTemplate,'FOREARMHALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).foreArmHalfHeight));

    osimModelTemplate = strrep(osimModelTemplate,'FOREARMMASS',sprintf('%.10f',subjectParams(subjectID).foreArmMass));
    osimModelTemplate = strrep(osimModelTemplate,'FOREARMINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).foreArmIxx));
    osimModelTemplate = strrep(osimModelTemplate,'FOREARMINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).foreArmIyy));
    osimModelTemplate = strrep(osimModelTemplate,'FOREARMINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).foreArmIzz));
    
    % HAND
    osimModelTemplate = strrep(osimModelTemplate,'HANDALFA',sprintf('%.10f',subjectParams(subjectID).handAlfa));
    osimModelTemplate = strrep(osimModelTemplate,'HANDBETA',sprintf('%.10f',subjectParams(subjectID).handBeta));
    osimModelTemplate = strrep(osimModelTemplate,'HANDGAMMA',sprintf('%.10f',subjectParams(subjectID).handGamma));
    osimModelTemplate = strrep(osimModelTemplate,'HANDHALFBETA',sprintf('%.10f',subjectParams(subjectID).handHalfBeta));
 
    osimModelTemplate = strrep(osimModelTemplate,'HANDMASS',sprintf('%.10f',subjectParams(subjectID).handMass));
    osimModelTemplate = strrep(osimModelTemplate,'HANDINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).handIxx));
    osimModelTemplate = strrep(osimModelTemplate,'HANDINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).handIyy));
    osimModelTemplate = strrep(osimModelTemplate,'HANDINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).handIzz));
    
    % HEAD
    osimModelTemplate = strrep(osimModelTemplate,'HEADRADIUS',sprintf('%.10f',subjectParams(subjectID).headRadius));
    osimModelTemplate = strrep(osimModelTemplate,'HEADDIAMETER',sprintf('%.10f',subjectParams(subjectID).headDiameter));
    
    osimModelTemplate = strrep(osimModelTemplate,'HEADMASS',sprintf('%.10f',subjectParams(subjectID).headMass));
    osimModelTemplate = strrep(osimModelTemplate,'HEADINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).headIxx));
    osimModelTemplate = strrep(osimModelTemplate,'HEADINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).headIyy));
    osimModelTemplate = strrep(osimModelTemplate,'HEADINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).headIzz));
    
    % NECK
    osimModelTemplate = strrep(osimModelTemplate,'NECKRADIUS',sprintf('%.10f',subjectParams(subjectID).neckRadius));
    osimModelTemplate = strrep(osimModelTemplate,'NECKDIAMETER',sprintf('%.10f',subjectParams(subjectID).neckDiameter));
    osimModelTemplate = strrep(osimModelTemplate,'NECKHEIGHT',sprintf('%.10f',subjectParams(subjectID).neckHeight));
    osimModelTemplate = strrep(osimModelTemplate,'NECKHALFHEIGHT',sprintf('%.10f',subjectParams(subjectID).neckHalfHeight));

    osimModelTemplate = strrep(osimModelTemplate,'NECKMASS',sprintf('%.10f',subjectParams(subjectID).neckMass));
    osimModelTemplate = strrep(osimModelTemplate,'NECKINERTIAIXX',sprintf('%.10f',subjectParams(subjectID).neckIxx));
    osimModelTemplate = strrep(osimModelTemplate,'NECKINERTIAIYY',sprintf('%.10f',subjectParams(subjectID).neckIyy));
    osimModelTemplate = strrep(osimModelTemplate,'NECKINERTIAIZZ',sprintf('%.10f',subjectParams(subjectID).neckIzz));

    %%Markers
    
    osimModelTemplate = strrep(osimModelTemplate,'PHIPORIGINX',sprintf('%.10f',pointsLocation(subjectID).pHipOriginLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PHIPORIGINY',sprintf('%.10f',pointsLocation(subjectID).pHipOriginLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PHIPORIGINZ',sprintf('%.10f',pointsLocation(subjectID).pHipOriginLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTASIX',sprintf('%.10f',pointsLocation(subjectID).pRightASILocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTASIY',sprintf('%.10f',pointsLocation(subjectID).pRightASILocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTASIZ',sprintf('%.10f',pointsLocation(subjectID).pRightASILocation(3)));
	osimModelTemplate = strrep(osimModelTemplate,'PLEFTASIX',sprintf('%.10f',pointsLocation(subjectID).pLeftASILocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTASIY',sprintf('%.10f',pointsLocation(subjectID).pLeftASILocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTASIZ',sprintf('%.10f',pointsLocation(subjectID).pLeftASILocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTCSIX',sprintf('%.10f',pointsLocation(subjectID).pRightCSILocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTCSIY',sprintf('%.10f',pointsLocation(subjectID).pRightCSILocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTCSIZ',sprintf('%.10f',pointsLocation(subjectID).pRightCSILocation(3)));
	osimModelTemplate = strrep(osimModelTemplate,'PLEFTCSIX',sprintf('%.10f',pointsLocation(subjectID).pLeftCSILocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTCSIY',sprintf('%.10f',pointsLocation(subjectID).pLeftCSILocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTCSIZ',sprintf('%.10f',pointsLocation(subjectID).pLeftCSILocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTISCHIALTUBX',sprintf('%.10f',pointsLocation(subjectID).pRightIschialTubLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTISCHIALTUBY',sprintf('%.10f',pointsLocation(subjectID).pRightIschialTubLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTISCHIALTUBZ',sprintf('%.10f',pointsLocation(subjectID).pRightIschialTubLocation(3)));
	osimModelTemplate = strrep(osimModelTemplate,'PLEFTISCHIALTUBX',sprintf('%.10f',pointsLocation(subjectID).pLeftIschialTubLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTISCHIALTUBY',sprintf('%.10f',pointsLocation(subjectID).pLeftIschialTubLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTISCHIALTUBZ',sprintf('%.10f',pointsLocation(subjectID).pLeftIschialTubLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PSACRUMX',sprintf('%.10f',pointsLocation(subjectID).pSacrumLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PSACRUMY',sprintf('%.10f',pointsLocation(subjectID).pSacrumLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PSACRUMZ',sprintf('%.10f',pointsLocation(subjectID).pSacrumLocation(3)));
	osimModelTemplate = strrep(osimModelTemplate,'PL5SPINALPROCESSX',sprintf('%.10f',pointsLocation(subjectID).pL5SpinalProcessLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PL5SPINALPROCESSY',sprintf('%.10f',pointsLocation(subjectID).pL5SpinalProcessLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PL5SPINALPROCESSZ',sprintf('%.10f',pointsLocation(subjectID).pL5SpinalProcessLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PL3SPINALPROCESSX',sprintf('%.10f',pointsLocation(subjectID).pL3SpinalProcessLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PL3SPINALPROCESSY',sprintf('%.10f',pointsLocation(subjectID).pL3SpinalProcessLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PL3SPINALPROCESSZ',sprintf('%.10f',pointsLocation(subjectID).pL3SpinalProcessLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PT12SPINALPROCESSX',sprintf('%.10f',pointsLocation(subjectID).pT12SpinalProcessLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PT12SPINALPROCESSY',sprintf('%.10f',pointsLocation(subjectID).pT12SpinalProcessLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PT12SPINALPROCESSZ',sprintf('%.10f',pointsLocation(subjectID).pT12SpinalProcessLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PPXX',sprintf('%.10f',pointsLocation(subjectID).pPXLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PPXY',sprintf('%.10f',pointsLocation(subjectID).pPXLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PPXZ',sprintf('%.10f',pointsLocation(subjectID).pPXLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PIJX',sprintf('%.10f',pointsLocation(subjectID).pIJLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PIJY',sprintf('%.10f',pointsLocation(subjectID).pIJLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PIJZ',sprintf('%.10f',pointsLocation(subjectID).pIJLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PT4SPINALPROCESSX',sprintf('%.10f',pointsLocation(subjectID).pT4SpinalProcessLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PT4SPINALPROCESSY',sprintf('%.10f',pointsLocation(subjectID).pT4SpinalProcessLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PT4SPINALPROCESSZ',sprintf('%.10f',pointsLocation(subjectID).pT4SpinalProcessLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PT8SPINALPROCESSX',sprintf('%.10f',pointsLocation(subjectID).pT8SpinalProcessLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PT8SPINALPROCESSY',sprintf('%.10f',pointsLocation(subjectID).pT8SpinalProcessLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PT8SPINALPROCESSZ',sprintf('%.10f',pointsLocation(subjectID).pT8SpinalProcessLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PC7SPINALPROCESSX',sprintf('%.10f',pointsLocation(subjectID).pC7SpinalProcessLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PC7SPINALPROCESSY',sprintf('%.10f',pointsLocation(subjectID).pC7SpinalProcessLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PC7SPINALPROCESSZ',sprintf('%.10f',pointsLocation(subjectID).pC7SpinalProcessLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PTOPOFHEADX',sprintf('%.10f',pointsLocation(subjectID).pTopOfHeadLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PTOPOFHEADY',sprintf('%.10f',pointsLocation(subjectID).pTopOfHeadLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PTOPOFHEADZ',sprintf('%.10f',pointsLocation(subjectID).pTopOfHeadLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTAURICULARISX',sprintf('%.10f',pointsLocation(subjectID).pRightAuricularisLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTAURICULARISY',sprintf('%.10f',pointsLocation(subjectID).pRightAuricularisLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTAURICULARISZ',sprintf('%.10f',pointsLocation(subjectID).pRightAuricularisLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTAURICULARISX',sprintf('%.10f',pointsLocation(subjectID).pLeftAuricularisLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTAURICULARISY',sprintf('%.10f',pointsLocation(subjectID).pLeftAuricularisLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTAURICULARISZ',sprintf('%.10f',pointsLocation(subjectID).pLeftAuricularisLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PBACKOFHEADX',sprintf('%.10f',pointsLocation(subjectID).pBackOfHeadLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PBACKOFHEADY',sprintf('%.10f',pointsLocation(subjectID).pBackOfHeadLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PBACKOFHEADZ',sprintf('%.10f',pointsLocation(subjectID).pBackOfHeadLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTACROMIONX',sprintf('%.10f',pointsLocation(subjectID).pRightAcromionLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTACROMIONY',sprintf('%.10f',pointsLocation(subjectID).pRightAcromionLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTACROMIONZ',sprintf('%.10f',pointsLocation(subjectID).pRightAcromionLocation(3)));
    
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTACROMIONX',sprintf('%.10f',pointsLocation(subjectID).pLeftAcromionLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTACROMIONY',sprintf('%.10f',pointsLocation(subjectID).pLeftAcromionLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTACROMIONZ',sprintf('%.10f',pointsLocation(subjectID).pLeftAcromionLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTARMLATEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pRightArmLatEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTARMLATEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pRightArmLatEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTARMLATEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pRightArmLatEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTARMMEDEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pRightArmMedEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTARMMEDEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pRightArmMedEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTARMMEDEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pRightArmMedEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTARMLATEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pLeftArmLatEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTARMLATEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pLeftArmLatEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTARMLATEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pLeftArmLatEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTARMMEDEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pLeftArmMedEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTARMMEDEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pLeftArmMedEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTARMMEDEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pLeftArmMedEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTULNARSTYLOIDX',sprintf('%.10f',pointsLocation(subjectID).pRightUlnarStyloidLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTULNARSTYLOIDY',sprintf('%.10f',pointsLocation(subjectID).pRightUlnarStyloidLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTULNARSTYLOIDZ',sprintf('%.10f',pointsLocation(subjectID).pRightUlnarStyloidLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTRADIALSTYLOIDX',sprintf('%.10f',pointsLocation(subjectID).pRightRadialStyloidLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTRADIALSTYLOIDY',sprintf('%.10f',pointsLocation(subjectID).pRightRadialStyloidLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTRADIALSTYLOIDZ',sprintf('%.10f',pointsLocation(subjectID).pRightRadialStyloidLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTOLECRANONX',sprintf('%.10f',pointsLocation(subjectID).pRightOlecranonLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTOLECRANONY',sprintf('%.10f',pointsLocation(subjectID).pRightOlecranonLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTOLECRANONZ',sprintf('%.10f',pointsLocation(subjectID).pRightOlecranonLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTULNARSTYLOIDX',sprintf('%.10f',pointsLocation(subjectID).pLeftUlnarStyloidLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTULNARSTYLOIDY',sprintf('%.10f',pointsLocation(subjectID).pLeftUlnarStyloidLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTULNARSTYLOIDZ',sprintf('%.10f',pointsLocation(subjectID).pLeftUlnarStyloidLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTRADIALSTYLOIDX',sprintf('%.10f',pointsLocation(subjectID).pLeftRadialStyloidLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTRADIALSTYLOIDY',sprintf('%.10f',pointsLocation(subjectID).pLeftRadialStyloidLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTRADIALSTYLOIDZ',sprintf('%.10f',pointsLocation(subjectID).pLeftRadialStyloidLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTOLECRANONX',sprintf('%.10f',pointsLocation(subjectID).pLeftOlecranonLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTOLECRANONY',sprintf('%.10f',pointsLocation(subjectID).pLeftOlecranonLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTOLECRANONZ',sprintf('%.10f',pointsLocation(subjectID).pLeftOlecranonLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTOPOFHANDX',sprintf('%.10f',pointsLocation(subjectID).pRightTopOfHandLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTOPOFHANDY',sprintf('%.10f',pointsLocation(subjectID).pRightTopOfHandLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTOPOFHANDZ',sprintf('%.10f',pointsLocation(subjectID).pRightTopOfHandLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPINKYX',sprintf('%.10f',pointsLocation(subjectID).pRightPinkyLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPINKYY',sprintf('%.10f',pointsLocation(subjectID).pRightPinkyLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPINKYZ',sprintf('%.10f',pointsLocation(subjectID).pRightPinkyLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTBALLHANDX',sprintf('%.10f',pointsLocation(subjectID).pRightBallHandLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTBALLHANDY',sprintf('%.10f',pointsLocation(subjectID).pRightBallHandLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTBALLHANDZ',sprintf('%.10f',pointsLocation(subjectID).pRightBallHandLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTOPOFHANDX',sprintf('%.10f',pointsLocation(subjectID).pLeftTopOfHandLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTOPOFHANDY',sprintf('%.10f',pointsLocation(subjectID).pLeftTopOfHandLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTOPOFHANDZ',sprintf('%.10f',pointsLocation(subjectID).pLeftTopOfHandLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPINKYX',sprintf('%.10f',pointsLocation(subjectID).pLeftPinkyLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPINKYY',sprintf('%.10f',pointsLocation(subjectID).pLeftPinkyLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPINKYZ',sprintf('%.10f',pointsLocation(subjectID).pLeftPinkyLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTBALLHANDX',sprintf('%.10f',pointsLocation(subjectID).pLeftBallHandLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTBALLHANDY',sprintf('%.10f',pointsLocation(subjectID).pLeftBallHandLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTBALLHANDZ',sprintf('%.10f',pointsLocation(subjectID).pLeftBallHandLocation(3)));
    
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTGREATERTROCHANTERX',sprintf('%.10f',pointsLocation(subjectID).pRightGreaterTrochanterLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTGREATERTROCHANTERY',sprintf('%.10f',pointsLocation(subjectID).pRightGreaterTrochanterLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTGREATERTROCHANTERZ',sprintf('%.10f',pointsLocation(subjectID).pRightGreaterTrochanterLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTKNEELATEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pRightKneeLatEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTKNEELATEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pRightKneeLatEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTKNEELATEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pRightKneeLatEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTKNEEMEDEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pRightKneeMedEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTKNEEMEDEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pRightKneeMedEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTKNEEMEDEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pRightKneeMedEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPATELLAX',sprintf('%.10f',pointsLocation(subjectID).pRightPatellaLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPATELLAY',sprintf('%.10f',pointsLocation(subjectID).pRightPatellaLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPATELLAZ',sprintf('%.10f',pointsLocation(subjectID).pRightPatellaLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTGREATERTROCHANTERX',sprintf('%.10f',pointsLocation(subjectID).pLeftGreaterTrochanterLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTGREATERTROCHANTERY',sprintf('%.10f',pointsLocation(subjectID).pLeftGreaterTrochanterLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTGREATERTROCHANTERZ',sprintf('%.10f',pointsLocation(subjectID).pLeftGreaterTrochanterLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTKNEELATEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pLeftKneeLatEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTKNEELATEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pLeftKneeLatEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTKNEELATEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pLeftKneeLatEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTKNEEMEDEPICONDYLEX',sprintf('%.10f',pointsLocation(subjectID).pLeftKneeMedEpicondyleLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTKNEEMEDEPICONDYLEY',sprintf('%.10f',pointsLocation(subjectID).pLeftKneeMedEpicondyleLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTKNEEMEDEPICONDYLEZ',sprintf('%.10f',pointsLocation(subjectID).pLeftKneeMedEpicondyleLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPATELLAX',sprintf('%.10f',pointsLocation(subjectID).pLeftPatellaLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPATELLAY',sprintf('%.10f',pointsLocation(subjectID).pLeftPatellaLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPATELLAZ',sprintf('%.10f',pointsLocation(subjectID).pLeftPatellaLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTLATMALLEOLUSX',sprintf('%.10f',pointsLocation(subjectID).pRightLatMalleolusLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTLATMALLEOLUSY',sprintf('%.10f',pointsLocation(subjectID).pRightLatMalleolusLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTLATMALLEOLUSZ',sprintf('%.10f',pointsLocation(subjectID).pRightLatMalleolusLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTMEDMALLEOLUSX',sprintf('%.10f',pointsLocation(subjectID).pRightMedMalleolusLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTMEDMALLEOLUSY',sprintf('%.10f',pointsLocation(subjectID).pRightMedMalleolusLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTMEDMALLEOLUSZ',sprintf('%.10f',pointsLocation(subjectID).pRightMedMalleolusLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTIBIALTUBX',sprintf('%.10f',pointsLocation(subjectID).pRightTibialTubLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTIBIALTUBY',sprintf('%.10f',pointsLocation(subjectID).pRightTibialTubLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTIBIALTUBZ',sprintf('%.10f',pointsLocation(subjectID).pRightTibialTubLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTLATMALLEOLUSX',sprintf('%.10f',pointsLocation(subjectID).pLeftLatMalleolusLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTLATMALLEOLUSY',sprintf('%.10f',pointsLocation(subjectID).pLeftLatMalleolusLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTLATMALLEOLUSZ',sprintf('%.10f',pointsLocation(subjectID).pLeftLatMalleolusLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTMEDMALLEOLUSX',sprintf('%.10f',pointsLocation(subjectID).pLeftMedMalleolusLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTMEDMALLEOLUSY',sprintf('%.10f',pointsLocation(subjectID).pLeftMedMalleolusLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTMEDMALLEOLUSZ',sprintf('%.10f',pointsLocation(subjectID).pLeftMedMalleolusLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTIBIALTUBX',sprintf('%.10f',pointsLocation(subjectID).pLeftTibialTubLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTIBIALTUBY',sprintf('%.10f',pointsLocation(subjectID).pLeftTibialTubLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTIBIALTUBZ',sprintf('%.10f',pointsLocation(subjectID).pLeftTibialTubLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTHEELFOOTX',sprintf('%.10f',pointsLocation(subjectID).pRightHeelFootLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTHEELFOOTY',sprintf('%.10f',pointsLocation(subjectID).pRightHeelFootLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTHEELFOOTZ',sprintf('%.10f',pointsLocation(subjectID).pRightHeelFootLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTFIRSTMETATARSALX',sprintf('%.10f',pointsLocation(subjectID).pRightFirstMetatarsalLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTFIRSTMETATARSALY',sprintf('%.10f',pointsLocation(subjectID).pRightFirstMetatarsalLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTFIRSTMETATARSALZ',sprintf('%.10f',pointsLocation(subjectID).pRightFirstMetatarsalLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTFIFTHMETATARSALX',sprintf('%.10f',pointsLocation(subjectID).pRightFifthMetatarsalLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTFIFTHMETATARSALY',sprintf('%.10f',pointsLocation(subjectID).pRightFifthMetatarsalLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTFIFTHMETATARSALZ',sprintf('%.10f',pointsLocation(subjectID).pRightFifthMetatarsalLocation(3)));
	osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPIVOTFOOTX',sprintf('%.10f',pointsLocation(subjectID).pRightPivotFootLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPIVOTFOOTY',sprintf('%.10f',pointsLocation(subjectID).pRightPivotFootLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTPIVOTFOOTZ',sprintf('%.10f',pointsLocation(subjectID).pRightPivotFootLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTHEELCENTERX',sprintf('%.10f',pointsLocation(subjectID).pRightHeelCenterLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTHEELCENTERY',sprintf('%.10f',pointsLocation(subjectID).pRightHeelCenterLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTHEELCENTERZ',sprintf('%.10f',pointsLocation(subjectID).pRightHeelCenterLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTOEX',sprintf('%.10f',pointsLocation(subjectID).pRightToeLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTOEY',sprintf('%.10f',pointsLocation(subjectID).pRightToeLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PRIGHTTOEZ',sprintf('%.10f',pointsLocation(subjectID).pRightToeLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTHEELFOOTX',sprintf('%.10f',pointsLocation(subjectID).pLeftHeelFootLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTHEELFOOTY',sprintf('%.10f',pointsLocation(subjectID).pLeftHeelFootLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTHEELFOOTZ',sprintf('%.10f',pointsLocation(subjectID).pLeftHeelFootLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTFIRSTMETATARSALX',sprintf('%.10f',pointsLocation(subjectID).pLeftFirstMetatarsalLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTFIRSTMETATARSALY',sprintf('%.10f',pointsLocation(subjectID).pLeftFirstMetatarsalLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTFIRSTMETATARSALZ',sprintf('%.10f',pointsLocation(subjectID).pLeftFirstMetatarsalLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTFIFTHMETATARSALX',sprintf('%.10f',pointsLocation(subjectID).pLeftFifthMetatarsalLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTFIFTHMETATARSALY',sprintf('%.10f',pointsLocation(subjectID).pLeftFifthMetatarsalLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTFIFTHMETATARSALZ',sprintf('%.10f',pointsLocation(subjectID).pLeftFifthMetatarsalLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPIVOTFOOTX',sprintf('%.10f',pointsLocation(subjectID).pLeftPivotFootLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPIVOTFOOTY',sprintf('%.10f',pointsLocation(subjectID).pLeftPivotFootLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTPIVOTFOOTZ',sprintf('%.10f',pointsLocation(subjectID).pLeftPivotFootLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTHEELCENTERX',sprintf('%.10f',pointsLocation(subjectID).pLeftHeelCenterLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTHEELCENTERY',sprintf('%.10f',pointsLocation(subjectID).pLeftHeelCenterLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTHEELCENTERZ',sprintf('%.10f',pointsLocation(subjectID).pLeftHeelCenterLocation(3)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTOEX',sprintf('%.10f',pointsLocation(subjectID).pLeftToeLocation(1)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTOEY',sprintf('%.10f',pointsLocation(subjectID).pLeftToeLocation(2)));
    osimModelTemplate = strrep(osimModelTemplate,'PLEFTTOEZ',sprintf('%.10f',pointsLocation(subjectID).pLeftToeLocation(3)));
    
    %% storing file into a proper folder
    fileID = fopen(sprintf('XSensForcePlate_OSIMsubject%d.osim',subjectID),'w');
    fprintf(fileID,'%s', osimModelTemplate);
    fclose(fileID);

end
fprintf('---------\n');
fprintf('OSIM models successfully created!\n');