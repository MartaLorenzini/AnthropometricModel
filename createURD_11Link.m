% CREATEURDFMODELFROMSUBJECTPARAMS
% Script to create for each subject a file urdf.

load('subjectParams.mat');

% NUM SUBJECT
subjectList = 1;

for subjectID = subjectList
    
    urdfModelTemplate = fileread('template_ELEVENLink.urdf');
    
    % FOOT
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTALFA',num2str(subjectParams(subjectID).footWidth));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTBETA',num2str(subjectParams(subjectID).footHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTGAMMA',num2str(subjectParams(subjectID).footDepth));
    urdfModelTemplate = strrep(urdfModelTemplate,'HALFFOOT_BETA',num2str(subjectParams(subjectID).halfFootHeigth));
    urdfModelTemplate = strrep(urdfModelTemplate,'ANKLEPOSITION',num2str(subjectParams(subjectID).anklePosition));
    
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTMASS',num2str(subjectParams(subjectID).footMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTINERTIAIXX',num2str(subjectParams(subjectID).footIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTINERTIAIYY',num2str(subjectParams(subjectID).footIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'FOOTINERTIAIZZ',num2str(subjectParams(subjectID).footIzz));

    % LOWER LEG
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGHEIGTH',num2str(subjectParams(subjectID).lowerLegHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGRADIUS',num2str(subjectParams(subjectID).lowerLegRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'HALFLOWERLEG_HEIGTH',num2str(subjectParams(subjectID).halfLowerLegHeigth));

    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGMASS',num2str(subjectParams(subjectID).lowerLegMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGINERTIAIXX',num2str(subjectParams(subjectID).lowerLegIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGINERTIAIYY',num2str(subjectParams(subjectID).lowerLegIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERLEGINERTIAIZZ',num2str(subjectParams(subjectID).lowerLegIzz));

    % UPPER LEG
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGHEIGTH',num2str(subjectParams(subjectID).upperLegHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGRADIUS',num2str(subjectParams(subjectID).upperLegRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'HALFUPPERLEG_HEIGTH',num2str(subjectParams(subjectID).halfUpperLegHeigth));
        
    urdfModelTemplate = strrep(urdfModelTemplate,'MIDTORSOPOSITION',num2str(subjectParams(subjectID).midTorsoPosition));
    urdfModelTemplate = strrep(urdfModelTemplate,'LEFTHIPPOSITION',num2str(subjectParams(subjectID).leftHipPosition));

    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGMASS',num2str(subjectParams(subjectID).upperLegMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGINERTIAIXX',num2str(subjectParams(subjectID).upperLegIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGINERTIAIYY',num2str(subjectParams(subjectID).upperLegIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERLEGINERTIAIZZ',num2str(subjectParams(subjectID).upperLegIzz));

    % TORSO
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOALFA',num2str(subjectParams(subjectID).torsoWidth));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOBETA',num2str(subjectParams(subjectID).torsoHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOGAMMA',num2str(subjectParams(subjectID).torsoDepth));
    urdfModelTemplate = strrep(urdfModelTemplate,'HALFTORSO_BETA',num2str(subjectParams(subjectID).halfTorsoHeigth));
 
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOMASS',num2str(subjectParams(subjectID).torsoMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOINERTIAIXX',num2str(subjectParams(subjectID).torsoIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOINERTIAIYY',num2str(subjectParams(subjectID).torsoIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'TORSOINERTIAIZZ',num2str(subjectParams(subjectID).torsoIzz));

    % UPPER ARM
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMRADIUS',num2str(subjectParams(subjectID).upperArmRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMHEIGTH',num2str(subjectParams(subjectID).upperArmHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'HALFUPPERARM_HEIGTH',num2str(subjectParams(subjectID).halfUpperArmHeigth));
     
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERHEIGTH',num2str(subjectParams(subjectID).shoulderHeigth));
    urdfModelTemplate = strrep(urdfModelTemplate,'SHOULDERPOSITION',num2str(subjectParams(subjectID).shoulderPosition));
    urdfModelTemplate = strrep(urdfModelTemplate,'RIGHTSHOULDER_POSITION',num2str(subjectParams(subjectID).rightShoulderPosition));
    urdfModelTemplate = strrep(urdfModelTemplate,'LEFTSHOULDER_POSITION',num2str(subjectParams(subjectID).leftShoulderPosition));

    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMMASS',num2str(subjectParams(subjectID).upperArmMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMINERTIAIXX',num2str(subjectParams(subjectID).upperArmIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMINERTIAIYY',num2str(subjectParams(subjectID).upperArmIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'UPPERARMINERTIAIZZ',num2str(subjectParams(subjectID).upperArmIzz));
   
    % LOWER ARM
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERARMRADIUS',num2str(subjectParams(subjectID).lowerArmRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERARMHEIGTH',num2str(subjectParams(subjectID).lowerArmHeight));
    urdfModelTemplate = strrep(urdfModelTemplate,'HALFLOWERARM_HEIGTH',num2str(subjectParams(subjectID).halfLowerArmHeigth));
    urdfModelTemplate = strrep(urdfModelTemplate,'ELBOWPOSITION',num2str(subjectParams(subjectID).ElbowPosition));

    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERARMMASS',num2str(subjectParams(subjectID).lowerArmMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERARMINERTIAIXX',num2str(subjectParams(subjectID).lowerArmIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERARMINERTIAIYY',num2str(subjectParams(subjectID).lowerArmIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'LOWERARMINERTIAIZZ',num2str(subjectParams(subjectID).lowerArmIzz));
    
    % HEAD
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADRADIUS',num2str(subjectParams(subjectID).headRadius));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADHEIGTH',num2str(subjectParams(subjectID).headHeigth));
    
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADMASS',num2str(subjectParams(subjectID).headMass));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADINERTIAIXX',num2str(subjectParams(subjectID).headIxx));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADINERTIAIYY',num2str(subjectParams(subjectID).headIyy));
    urdfModelTemplate = strrep(urdfModelTemplate,'HEADINERTIAIZZ',num2str(subjectParams(subjectID).headIzz));

    %% storing file into a proper folder

    fileID = fopen(sprintf('ELEVENLinkHuman_subject%d.urdf',subjectID),'w');
    fprintf(fileID,'%s', urdfModelTemplate);
    fclose(fileID);

end
fprintf('---------\n');
fprintf('URDF models successfully created!\n');