% CREATEURDFMODELFROMSUBJECTPARAMS
% Script to create for each subject a file urdf.

load('subjectParams.mat');

% NUM SUBJECT
subjectList = 1;

for subjectID = subjectList
    
    urdfModelTemplate = fileread('XSensSfericModel_URDFtemplate.urdf');
    
    % FOOT
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTALFA',num2str(subjectParams(subjectID).footAlfa));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTBETA',num2str(subjectParams(subjectID).footBeta));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTGAMMA',num2str(subjectParams(subjectID).footGamma));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTHALFBETA',num2str(subjectParams(subjectID).footHalfBeta));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTHALFGAMMA',num2str(subjectParams(subjectID).footHalfGamma));
    urdfModelTemplate = strrep(urdfModelTemplate,'ANKLEPOSX',num2str(subjectParams(subjectID).anklePosX));
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEPOSX',num2str(subjectParams(subjectID).toePosX));
    
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTMASS',num2str(subjectParams(subjectID).footMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTINERTIAIXX',num2str(subjectParams(subjectID).footIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTINERTIAIYY',num2str(subjectParams(subjectID).footIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTINERTIAIZZ',num2str(subjectParams(subjectID).footIzz));

    % TOE
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEALFA',num2str(subjectParams(subjectID).toeAlfa));
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEBETA',num2str(subjectParams(subjectID).toeBeta));
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEGAMMA',num2str(subjectParams(subjectID).toeGamma));
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEHALFGAMMA',num2str(subjectParams(subjectID).toeHalfGamma));
    
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEMASS',num2str(subjectParams(subjectID).toeMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEINERTIAIXX',num2str(subjectParams(subjectID).toeIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEINERTIAIYY',num2str(subjectParams(subjectID).toeIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'TOEINERTIAIZZ',num2str(subjectParams(subjectID).toeIzz));
    
    % LOWER LEG
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGHEIGHT',num2str(subjectParams(subjectID).lowerLegHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGRADIUS',num2str(subjectParams(subjectID).lowerLegRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGHALFHEIGHT',num2str(subjectParams(subjectID).lowerLegHalfHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGDIAMETER',num2str(subjectParams(subjectID).lowerLegDiameter));

    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGMASS',num2str(subjectParams(subjectID).lowerLegMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGINERTIAIXX',num2str(subjectParams(subjectID).lowerLegIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGINERTIAIYY',num2str(subjectParams(subjectID).lowerLegIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGINERTIAIZZ',num2str(subjectParams(subjectID).lowerLegIzz));

    % UPPER LEG
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGHEIGHT',num2str(subjectParams(subjectID).upperLegHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGRADIUS',num2str(subjectParams(subjectID).upperLegRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGDIAMETER',num2str(subjectParams(subjectID).upperLegDiameter));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGHALFHEIGHT',num2str(subjectParams(subjectID).upperLegHalfHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'HIPPOSY',num2str(subjectParams(subjectID).HipPosY));
    urdfModelTemplate = strrep(urdfModelTemplate,'HIPDOUBLEPOSY',num2str(subjectParams(subjectID).HipDoublePosY));
    
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGMASS',num2str(subjectParams(subjectID).upperLegMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGINERTIAIXX',num2str(subjectParams(subjectID).upperLegIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGINERTIAIYY',num2str(subjectParams(subjectID).upperLegIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGINERTIAIZZ',num2str(subjectParams(subjectID).upperLegIzz));

    % TORSO
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOALFA',num2str(subjectParams(subjectID).torsoAlfa));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOBETA',num2str(subjectParams(subjectID).torsoBeta));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOGAMMA',num2str(subjectParams(subjectID).torsoGamma));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOHALFBETA',num2str(subjectParams(subjectID).torsoHalfBeta));
 
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOMASS',num2str(subjectParams(subjectID).torsoMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOINERTIAIXX',num2str(subjectParams(subjectID).torsoIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOINERTIAIYY',num2str(subjectParams(subjectID).torsoIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOINERTIAIZZ',num2str(subjectParams(subjectID).torsoIzz));
    
    % PELVIS
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISALFA',num2str(subjectParams(subjectID).pelvisAlfa));
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISBETA',num2str(subjectParams(subjectID).pelvisBeta));
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISGAMMA',num2str(subjectParams(subjectID).pelvisGamma));
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISHALFBETA',num2str(subjectParams(subjectID).pelvisHalfBeta));
 
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISMASS',num2str(subjectParams(subjectID).pelvisMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISINERTIAIXX',num2str(subjectParams(subjectID).pelvisIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISINERTIAIYY',num2str(subjectParams(subjectID).pelvisIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'PELVISINERTIAIZZ',num2str(subjectParams(subjectID).pelvisIzz));
    
    % L5
    urdfModelTemplate = strrep(urdfModelTemplate,'L5HEIGHT',num2str(subjectParams(subjectID).L5Height));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5RADIUSX',num2str(subjectParams(subjectID).L5RadiusX));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5DIAMETERX',num2str(subjectParams(subjectID).L5DiameterX));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5RADIUSY',num2str(subjectParams(subjectID).L5RadiusY));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5DIAMETERY',num2str(subjectParams(subjectID).L5DiameterY));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5HALFHEIGHT',num2str(subjectParams(subjectID).L5HalfHeight));

    urdfModelTemplate = strrep(urdfModelTemplate,'L5MASS',num2str(subjectParams(subjectID).L5Mass));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5INERTIAIXX',num2str(subjectParams(subjectID).L5Ixx));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5INERTIAIYY',num2str(subjectParams(subjectID).L5Iyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'L5INERTIAIZZ',num2str(subjectParams(subjectID).L5Izz));
    
    % L3
    urdfModelTemplate = strrep(urdfModelTemplate,'L3HEIGHT',num2str(subjectParams(subjectID).L3Height));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3RADIUSX',num2str(subjectParams(subjectID).L3RadiusX));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3DIAMETERX',num2str(subjectParams(subjectID).L3DiameterX));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3RADIUSY',num2str(subjectParams(subjectID).L3RadiusY));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3DIAMETERY',num2str(subjectParams(subjectID).L3DiameterY));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3HALFHEIGHT',num2str(subjectParams(subjectID).L3HalfHeight));

    urdfModelTemplate = strrep(urdfModelTemplate,'L3MASS',num2str(subjectParams(subjectID).L3Mass));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3INERTIAIXX',num2str(subjectParams(subjectID).L3Ixx));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3INERTIAIYY',num2str(subjectParams(subjectID).L3Iyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'L3INERTIAIZZ',num2str(subjectParams(subjectID).L3Izz));
    
    % T12
    urdfModelTemplate = strrep(urdfModelTemplate,'T12HEIGHT',num2str(subjectParams(subjectID).T12Height));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12RADIUSX',num2str(subjectParams(subjectID).T12RadiusX));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12DIAMETERX',num2str(subjectParams(subjectID).T12DiameterX));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12RADIUSY',num2str(subjectParams(subjectID).T12RadiusY));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12DIAMETERY',num2str(subjectParams(subjectID).T12DiameterY));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12HALFHEIGHT',num2str(subjectParams(subjectID).T12HalfHeight));

    urdfModelTemplate = strrep(urdfModelTemplate,'T12MASS',num2str(subjectParams(subjectID).T12Mass));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12INERTIAIXX',num2str(subjectParams(subjectID).T12Ixx));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12INERTIAIYY',num2str(subjectParams(subjectID).T12Iyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'T12INERTIAIZZ',num2str(subjectParams(subjectID).T12Izz));
    
    % T8
    urdfModelTemplate = strrep(urdfModelTemplate,'T8ALFA',num2str(subjectParams(subjectID).T8Alfa));
    urdfModelTemplate = strrep(urdfModelTemplate,'T8BETA',num2str(subjectParams(subjectID).T8Beta));
    urdfModelTemplate = strrep(urdfModelTemplate,'T8GAMMA',num2str(subjectParams(subjectID).T8Gamma));
    urdfModelTemplate = strrep(urdfModelTemplate,'T8HALFBETA',num2str(subjectParams(subjectID).T8HalfBeta));
    urdfModelTemplate = strrep(urdfModelTemplate,'T8HALFALFA',num2str(subjectParams(subjectID).T8HalfAlfa));
 
    urdfModelTemplate = strrep(urdfModelTemplate,'T8MASS',num2str(subjectParams(subjectID).T8Mass));
    urdfModelTemplate = strrep(urdfModelTemplate,'T8INERTIAIXX',num2str(subjectParams(subjectID).T8Ixx));
    urdfModelTemplate = strrep(urdfModelTemplate,'T8INERTIAIYY',num2str(subjectParams(subjectID).T8Iyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'T8INERTIAIZZ',num2str(subjectParams(subjectID).T8Izz));
    
    % SHOULDER
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERHEIGHT',num2str(subjectParams(subjectID).shoulderHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERRADIUS',num2str(subjectParams(subjectID).shoulderRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERDIAMETER',num2str(subjectParams(subjectID).shoulderDiameter));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERHALFHEIGHT',num2str(subjectParams(subjectID).shoulderHalfHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERPOSZ',num2str(subjectParams(subjectID).shoulderPosZ));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERURDFPOSZ',num2str(subjectParams(subjectID).shoulderUrdfPosZ));
    
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERMASS',num2str(subjectParams(subjectID).shoulderMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERINERTIAIXX',num2str(subjectParams(subjectID).shoulderIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERINERTIAIYY',num2str(subjectParams(subjectID).shoulderIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERINERTIAIZZ',num2str(subjectParams(subjectID).shoulderIzz));

    % UPPER ARM
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMRADIUS',num2str(subjectParams(subjectID).upperArmRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMDIAMETER',num2str(subjectParams(subjectID).upperArmDiameter));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMHEIGHT',num2str(subjectParams(subjectID).upperArmHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMHALFHEIGHT',num2str(subjectParams(subjectID).upperArmHalfHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'ARMPOSZ',num2str(subjectParams(subjectID).armPosZ));
    urdfModelTemplate = strrep(urdfModelTemplate,'ARMURDFPOSZ',num2str(subjectParams(subjectID).armUrdfPosZ));

    
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMMASS',num2str(subjectParams(subjectID).upperArmMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMINERTIAIXX',num2str(subjectParams(subjectID).upperArmIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMINERTIAIYY',num2str(subjectParams(subjectID).upperArmIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMINERTIAIZZ',num2str(subjectParams(subjectID).upperArmIzz));
   
    % FORE ARM
    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMRADIUS',num2str(subjectParams(subjectID).foreArmRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMDIAMETER',num2str(subjectParams(subjectID).foreArmDiameter));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMHEIGHT',num2str(subjectParams(subjectID).foreArmHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMHALFHEIGHT',num2str(subjectParams(subjectID).foreArmHalfHeight));

    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMMASS',num2str(subjectParams(subjectID).foreArmMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMINERTIAIXX',num2str(subjectParams(subjectID).foreArmIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMINERTIAIYY',num2str(subjectParams(subjectID).foreArmIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOREARMINERTIAIZZ',num2str(subjectParams(subjectID).foreArmIzz));
    
    % HAND
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDALFA',num2str(subjectParams(subjectID).handAlfa));
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDBETA',num2str(subjectParams(subjectID).handBeta));
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDGAMMA',num2str(subjectParams(subjectID).handGamma));
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDHALFBETA',num2str(subjectParams(subjectID).handHalfBeta));
 
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDMASS',num2str(subjectParams(subjectID).handMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDINERTIAIXX',num2str(subjectParams(subjectID).handIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDINERTIAIYY',num2str(subjectParams(subjectID).handIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'HANDINERTIAIZZ',num2str(subjectParams(subjectID).handIzz));
    
    % HEAD
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADRADIUS',num2str(subjectParams(subjectID).headRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADDIAMETER',num2str(subjectParams(subjectID).headDiameter));
    
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADMASS',num2str(subjectParams(subjectID).headMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADINERTIAIXX',num2str(subjectParams(subjectID).headIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADINERTIAIYY',num2str(subjectParams(subjectID).headIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADINERTIAIZZ',num2str(subjectParams(subjectID).headIzz));
    
    % NECK
    urdfModelTemplate = strrep(urdfModelTemplate,'NECKRADIUS',num2str(subjectParams(subjectID).neckRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'NECKDIAMETER',num2str(subjectParams(subjectID).neckDiameter));
    urdfModelTemplate = strrep(urdfModelTemplate,'NECKHEIGHT',num2str(subjectParams(subjectID).neckHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'NECKHALFHEIGHT',num2str(subjectParams(subjectID).neckHalfHeight));

    urdfModelTemplate = strrep(urdfModelTemplate,'NECKMASS',num2str(subjectParams(subjectID).neckMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'NECKINERTIAIXX',num2str(subjectParams(subjectID).neckIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'NECKINERTIAIYY',num2str(subjectParams(subjectID).neckIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'NECKINERTIAIZZ',num2str(subjectParams(subjectID).neckIzz));

    %GHOST PARAMETERS
    urdfModelTemplate = strrep(urdfModelTemplate,'GHOSTDIM',num2str(subjectParams(subjectID).ghostDim));
    urdfModelTemplate = strrep(urdfModelTemplate,'GHOSTMASS',num2str(subjectParams(subjectID).ghostMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'GHOSTIN',num2str(subjectParams(subjectID).ghostIn));
    
    %% storing file into a proper folder
    cd(sprintf('XSensSfericModel_URDFsubject%d',subjectID));
    fileID = fopen(sprintf('XSensSfericModel_URDFsubject%d.urdf',subjectID),'w');
    fprintf(fileID,'%s', urdfModelTemplate);
    fclose(fileID);
    cd ..

end
fprintf('---------\n');
fprintf('URDF models successfully created!\n');