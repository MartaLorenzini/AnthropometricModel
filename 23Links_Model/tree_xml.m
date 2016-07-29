% This script allow to extract from a mvnx file all the body landmarks locations in
% the segments reference frame 
% remember to run FindParam.m before run this script

%clear all
%close all
%clc

subjectID=1;
tree=xml_read('C:\Users\Marta\Downloads\TESI\Bartender\Meri_1-Strap.mvnx');
save('tree');


%% Points Location Definition

% Segment 1 - pelvis
pHipOriginLocation = tree.subject.segments.segment(1).points.point(1).pos_s;
pRightASILocation = tree.subject.segments.segment(1).points.point(7).pos_s;
pLeftASILocation = tree.subject.segments.segment(1).points.point(8).pos_s;
pRightCSILocation = tree.subject.segments.segment(1).points.point(9).pos_s;
pLeftCSILocation = tree.subject.segments.segment(1).points.point(10).pos_s;
pRightIschialTubLocation = tree.subject.segments.segment(1).points.point(11).pos_s;
pLeftIschialTubLocation = tree.subject.segments.segment(1).points.point(12).pos_s;
pSacrumLocation = tree.subject.segments.segment(1).points.point(13).pos_s;

% Segment 2 - L5
pL5SpinalProcessLocation = tree.subject.segments.segment(2).points.point(3).pos_s;

% Segment 3 - L3
pL3SpinalProcessLocation = tree.subject.segments.segment(3).points.point(3).pos_s;

% Segment 4 - T12
pT12SpinalProcessLocation = tree.subject.segments.segment(4).points.point(3).pos_s;

% Segment 5 - T8
pC7SpinalProcessLocation = tree.subject.segments.segment(5).points.point(5).pos_s; % also defined in segment 6 (neck)
pPXLocation = tree.subject.segments.segment(5).points.point(6).pos_s;
pIJLocation = tree.subject.segments.segment(5).points.point(7).pos_s; % also defined in segments 8 and 12 (right and left shoulder)
pT4SpinalProcessLocation = tree.subject.segments.segment(5).points.point(8).pos_s;
pT8SpinalProcessLocation = tree.subject.segments.segment(5).points.point(9).pos_s;

% Segment 7 - head
pTopOfHeadLocation = tree.subject.segments.segment(7).points.point(2).pos_s;
pRightAuricularisLocation = tree.subject.segments.segment(7).points.point(3).pos_s;
pLeftAuricularisLocation = tree.subject.segments.segment(7).points.point(4).pos_s;
pBackOfHeadLocation = tree.subject.segments.segment(7).points.point(5).pos_s;

% Segment 8 - rightShoulder
pRightAcromionLocation = tree.subject.segments.segment(8).points.point(4).pos_s;

% Segment 12 - leftShoulder
pLeftAcromionLocation = tree.subject.segments.segment(12).points.point(4).pos_s;

% Segment 9 - rightUpperArm
pRightArmLatEpicondyleLocation = tree.subject.segments.segment(9).points.point(3).pos_s;
pRightArmMedEpicondyleLocation = tree.subject.segments.segment(9).points.point(4).pos_s;

% Segment 13 - leftUpperArm
pLeftArmLatEpicondyleLocation = tree.subject.segments.segment(13).points.point(3).pos_s;
pLeftArmMedEpicondyleLocation = tree.subject.segments.segment(13).points.point(4).pos_s;

% Segment 10 - rightForeArm
pRightUlnarStyloidLocation  = tree.subject.segments.segment(10).points.point(3).pos_s;
pRightRadialStyloidLocation  = tree.subject.segments.segment(10).points.point(4).pos_s;
pRightOlecranonLocation  = tree.subject.segments.segment(10).points.point(5).pos_s;

% Segment 14 - leftForeArm
pLeftUlnarStyloidLocation  = tree.subject.segments.segment(14).points.point(3).pos_s;
pLeftRadialStyloidLocation  = tree.subject.segments.segment(14).points.point(4).pos_s;
pLeftOlecranonLocation  = tree.subject.segments.segment(14).points.point(5).pos_s;

% Segment 11 - rightHand
pRightTopOfHandLocation  = tree.subject.segments.segment(11).points.point(2).pos_s;
pRightPinkyLocation  = tree.subject.segments.segment(11).points.point(3).pos_s;
pRightBallHandLocation  = tree.subject.segments.segment(11).points.point(4).pos_s;

% Segment 15 - leftHand
pLeftTopOfHandLocation  = tree.subject.segments.segment(15).points.point(2).pos_s;
pLeftPinkyLocation  = tree.subject.segments.segment(15).points.point(3).pos_s;
pLeftBallHandLocation  = tree.subject.segments.segment(15).points.point(4).pos_s;

% Segment 16 - rightUpperLeg
pRightGreaterTrochanterLocation  = tree.subject.segments.segment(16).points.point(3).pos_s;
pRightPatellaLocation  = tree.subject.segments.segment(16).points.point(6).pos_s; 

% Segment 17 - rightLowerLeg
pRightKneeLatEpicondyleLocation  = tree.subject.segments.segment(17).points.point(3).pos_s; % also defined in segment 16 (right upper leg)
pRightKneeMedEpicondyleLocation  = tree.subject.segments.segment(17).points.point(4).pos_s; % also defined in segment 16 (right upper leg)
pRightLatMalleolusLocation  = tree.subject.segments.segment(17).points.point(5).pos_s;
pRightMedMalleolusLocation  = tree.subject.segments.segment(17).points.point(6).pos_s;
pRightTibialTubLocation  = tree.subject.segments.segment(17).points.point(7).pos_s;

% Segment 20 - leftUpperLeg
pLeftGreaterTrochanterLocation  = tree.subject.segments.segment(20).points.point(3).pos_s; 
pLeftPatellaLocation  = tree.subject.segments.segment(20).points.point(6).pos_s; 

% Segment 21 - leftLowerLeg
pLeftKneeLatEpicondyleLocation  = tree.subject.segments.segment(21).points.point(3).pos_s; % also defined in segment 20 (left upper leg)
pLeftKneeMedEpicondyleLocation  = tree.subject.segments.segment(21).points.point(4).pos_s; % also defined in segment 20 (left upper leg)
pLeftLatMalleolusLocation  = tree.subject.segments.segment(21).points.point(5).pos_s;
pLeftMedMalleolusLocation  = tree.subject.segments.segment(21).points.point(6).pos_s;
pLeftTibialTubLocation  = tree.subject.segments.segment(21).points.point(7).pos_s;

% Segment 18 - rightFoot
pRightHeelFootLocation  = tree.subject.segments.segment(18).points.point(3).pos_s;
pRightFirstMetatarsalLocation  = tree.subject.segments.segment(18).points.point(4).pos_s;
pRightFifthMetatarsalLocation  = tree.subject.segments.segment(18).points.point(5).pos_s;
pRightPivotFootLocation  = tree.subject.segments.segment(18).points.point(6).pos_s;
pRightHeelCenterLocation  = tree.subject.segments.segment(18).points.point(7).pos_s;

% Segment 19 - rightToe
pRightToeLocation  = tree.subject.segments.segment(19).points.point(2).pos_s;

% Segment 22 - leftFoot
pLeftHeelFootLocation  = tree.subject.segments.segment(22).points.point(3).pos_s;
pLeftFirstMetatarsalLocation  = tree.subject.segments.segment(22).points.point(4).pos_s;
pLeftFifthMetatarsalLocation  = tree.subject.segments.segment(22).points.point(5).pos_s;
pLeftPivotFootLocation  = tree.subject.segments.segment(22).points.point(6).pos_s;
pLeftHeelCenterLocation  = tree.subject.segments.segment(22).points.point(7).pos_s;

% Segment 23 - leftToe
pLeftToeLocation  = tree.subject.segments.segment(23).points.point(2).pos_s;

%% Points location transformation

% Transformation matrix computation

ballFoot_T_toe = [1 0 0 -toeHalfGamma; 0 1 0 0; 0 0 1 0; 0 0 0 1];
ankle_T_foot = [1 0 0  -anklePosX; 0 1 0 0; 0 0 1 footHalfBeta; 0 0 0 1];
knee_T_lowerLeg = [1 0 0 0; 0 1 0 0; 0 0 1 lowerLegHalfHeight; 0 0 0 1];
hip_T_upperLeg = [1 0 0 0; 0 1 0 0; 0 0 1 upperLegHalfHeight; 0 0 0 1];
hipOrigin_T_pelvis = [1 0 0 0; 0 1 0 0; 0 0 1 -0.5*pelvisHalfBeta; 0 0 0 1];
jL5S1_T_l5 = [1 0 0 0; 0 1 0 0; 0 0 1 -L5HalfHeight; 0 0 0 1];
jL4L3_T_l3 = [1 0 0 0; 0 1 0 0; 0 0 1 -L3HalfHeight; 0 0 0 1];
jL1T12_T_T12 = [1 0 0 0; 0 1 0 0; 0 0 1 -T12HalfHeight; 0 0 0 1];
jT9T8_T_T8 = [1 0 0 0; 0 1 0 0; 0 0 1 -T8HalfBeta; 0 0 0 1];
jT1C7_T_neck = [1 0 0 0; 0 1 0 0; 0 0 1 -neckHalfHeight; 0 0 0 1];
jC1Head_T_head= [1 0 0 0; 0 1 0 0; 0 0 1 -headRadius; 0 0 0 1];
jRightC7Shoulder_T_rightShoulder = [1 0 0 0; 0 1 0 shoulderHalfHeight; 0 0 1 0; 0 0 0 1];
jLeftC7Shoulder_T_leftShoulder = [1 0 0 0; 0 1 0 -shoulderHalfHeight; 0 0 1 0; 0 0 0 1];
jRightShoulder_T_rightUpperArm = [1 0 0 0; 0 0 -1 0; 0 1 0 armPosZ; 0 0 0 1]; % antiorario 90 gradi x (negativo)
jLeftShoulder_T_leftUpperArm = [1 0 0 0; 0 0 1 0; 0 -1 0 armPosZ; 0 0 0 1]; % orario 90 gradi x (positivo)
jRightElbow_T_rightForeArm = [1 0 0 0; 0 0 -1 0; 0 1 0 foreArmHalfHeight; 0 0 0 1];  % antiorario 90 gradi x (negativo)
jLeftElbow_T_leftForeArm = [1 0 0 0; 0 0 1 0; 0 -1 0 foreArmHalfHeight; 0 0 0 1]; % orario 90 gradi x (positivo)       
jRightWrist_T_rightHand = [1 0 0 0; 0 0 -1 0; 0 1 0 handHalfBeta; 0 0 0 1];  % antiorario 90 gradi x (negativo)
jLeftWrist_T_leftHand = [1 0 0 0; 0 0 1 0; 0 -1 0 handHalfBeta; 0 0 0 1]; % orario 90 gradi x (positivo)

% Location of the point defined in the centres of mass of the segments
% Segment 1 - pelvis
pHipOriginLocation = (hipOrigin_T_pelvis*[pHipOriginLocation, 1]')';
pHipOriginLocation = pHipOriginLocation(1,1:3);
pRightASILocation = (hipOrigin_T_pelvis*[pRightASILocation, 1]')';
pRightASILocation = pRightASILocation(1,1:3);
pLeftASILocation = (hipOrigin_T_pelvis*[pLeftASILocation, 1]')';
pLeftASILocation = pLeftASILocation(1,1:3);
pRightCSILocation = (hipOrigin_T_pelvis*[pRightCSILocation, 1]')';
pRightCSILocation = pRightCSILocation(1,1:3);
pLeftCSILocation = (hipOrigin_T_pelvis*[pLeftCSILocation, 1]')';
pLeftCSILocation = pLeftCSILocation(1,1:3);
pRightIschialTubLocation = (hipOrigin_T_pelvis*[pRightIschialTubLocation, 1]')';
pRightIschialTubLocation = pRightIschialTubLocation(1,1:3);
pLeftIschialTubLocation = (hipOrigin_T_pelvis*[pLeftIschialTubLocation, 1]')';
pLeftIschialTubLocation = pLeftIschialTubLocation(1,1:3);
pSacrumLocation = (hipOrigin_T_pelvis*[pSacrumLocation, 1]')';
pSacrumLocation = pSacrumLocation(1,1:3);

% Segment 2 - L5
pL5SpinalProcessLocation = (jL5S1_T_l5*[pL5SpinalProcessLocation, 1]')';
pL5SpinalProcessLocation = pL5SpinalProcessLocation(1,1:3);

% Segment 3 - L3
pL3SpinalProcessLocation = (jL4L3_T_l3*[pL3SpinalProcessLocation, 1]')';
pL3SpinalProcessLocation = pL3SpinalProcessLocation(1,1:3);

% Segment 4 - T12
pT12SpinalProcessLocation = (jL1T12_T_T12*[pT12SpinalProcessLocation, 1]')';
pT12SpinalProcessLocation = pT12SpinalProcessLocation(1,1:3);

% Segment 5 - T8
pC7SpinalProcessLocation = (jT9T8_T_T8*[pC7SpinalProcessLocation, 1]')'; 
pC7SpinalProcessLocation = pC7SpinalProcessLocation(1,1:3);
pPXLocation = (jT9T8_T_T8*[pPXLocation, 1]')';
pPXLocation = pPXLocation(1,1:3);
pIJLocation = (jT9T8_T_T8*[pIJLocation, 1]')';
pIJLocation = pIJLocation(1,1:3);
pT4SpinalProcessLocation = (jT9T8_T_T8*[pT4SpinalProcessLocation, 1]')';
pT4SpinalProcessLocation = pT4SpinalProcessLocation(1,1:3);
pT8SpinalProcessLocation = (jT9T8_T_T8*[pT8SpinalProcessLocation, 1]')';
pT8SpinalProcessLocation = pT8SpinalProcessLocation(1,1:3);

% Segment 7 - head
pTopOfHeadLocation = (jC1Head_T_head*[pTopOfHeadLocation, 1]')';
pTopOfHeadLocation = pTopOfHeadLocation(1,1:3);
pRightAuricularisLocation = (jC1Head_T_head*[pRightAuricularisLocation, 1]')';
pRightAuricularisLocation = pRightAuricularisLocation(1,1:3);
pLeftAuricularisLocation = (jC1Head_T_head*[pLeftAuricularisLocation , 1]')';
pLeftAuricularisLocation  = pLeftAuricularisLocation(1,1:3); 
pBackOfHeadLocation = (jC1Head_T_head*[pBackOfHeadLocation, 1]')';
pBackOfHeadLocation = pBackOfHeadLocation(1,1:3);

% Segment 8 - rightShoulder
pRightAcromionLocation = (jRightC7Shoulder_T_rightShoulder*[pRightAcromionLocation, 1]')';
pRightAcromionLocation = pRightAcromionLocation(1,1:3);

% Segment 12 - leftShoulder
pLeftAcromionLocation = (jLeftC7Shoulder_T_leftShoulder*[pLeftAcromionLocation, 1]')';
pLeftAcromionLocation = pLeftAcromionLocation(1,1:3);

% Segment 9 - rightUpperArm
pRightArmLatEpicondyleLocation = (jRightShoulder_T_rightUpperArm*[pRightArmLatEpicondyleLocation, 1]')';
pRightArmLatEpicondyleLocation = pRightArmLatEpicondyleLocation(1,1:3);
pRightArmMedEpicondyleLocation = (jRightShoulder_T_rightUpperArm*[pRightArmMedEpicondyleLocation, 1]')';
pRightArmMedEpicondyleLocation = pRightArmMedEpicondyleLocation(1,1:3);

% Segment 13 - leftUpperArm
pLeftArmLatEpicondyleLocation = (jLeftShoulder_T_leftUpperArm*[pLeftArmLatEpicondyleLocation, 1]')';
pLeftArmLatEpicondyleLocation = pLeftArmLatEpicondyleLocation(1,1:3);
pLeftArmMedEpicondyleLocation = (jLeftShoulder_T_leftUpperArm*[pLeftArmMedEpicondyleLocation, 1]')';
pLeftArmMedEpicondyleLocation = pLeftArmMedEpicondyleLocation(1,1:3);

% Segment 10 - rightForeArm
pRightUlnarStyloidLocation  = (jRightElbow_T_rightForeArm*[pRightUlnarStyloidLocation, 1]')';
pRightUlnarStyloidLocation = pRightUlnarStyloidLocation(1,1:3);
pRightRadialStyloidLocation  = (jRightElbow_T_rightForeArm*[pRightRadialStyloidLocation , 1]')';
pRightRadialStyloidLocation  = pRightRadialStyloidLocation(1,1:3); 
pRightOlecranonLocation  = (jRightElbow_T_rightForeArm*[pRightOlecranonLocation, 1]')';
pRightOlecranonLocation = pRightOlecranonLocation(1,1:3);

% Segment 14 - leftForeArm
pLeftUlnarStyloidLocation  = (jLeftElbow_T_leftForeArm*[pLeftUlnarStyloidLocation, 1]')';
pLeftUlnarStyloidLocation = pLeftUlnarStyloidLocation(1,1:3);
pLeftRadialStyloidLocation  = (jLeftElbow_T_leftForeArm*[pLeftRadialStyloidLocation , 1]')';
pLeftRadialStyloidLocation  = pLeftRadialStyloidLocation(1,1:3); 
pLeftOlecranonLocation  = (jLeftElbow_T_leftForeArm*[pLeftOlecranonLocation, 1]')';
pLeftOlecranonLocation = pLeftOlecranonLocation(1,1:3);

% Segment 11 - rightHand
pRightTopOfHandLocation  = (jRightWrist_T_rightHand*[pRightTopOfHandLocation, 1]')';
pRightTopOfHandLocation =  pRightTopOfHandLocation(1,1:3);
pRightPinkyLocation  = (jRightWrist_T_rightHand*[pRightPinkyLocation, 1]')';
pRightPinkyLocation = pRightPinkyLocation(1,1:3);
pRightBallHandLocation  = (jRightWrist_T_rightHand*[pRightBallHandLocation, 1]')';
pRightBallHandLocation = pRightBallHandLocation(1,1:3); 

% Segment 15 - leftHand
pLeftTopOfHandLocation  = (jLeftWrist_T_leftHand*[pLeftTopOfHandLocation, 1]')';
pLeftTopOfHandLocation =  pLeftTopOfHandLocation(1,1:3);
pLeftPinkyLocation  = (jLeftWrist_T_leftHand*[pLeftPinkyLocation, 1]')';
pLeftPinkyLocation = pLeftPinkyLocation(1,1:3);
pLeftBallHandLocation  = (jLeftWrist_T_leftHand*[pLeftBallHandLocation, 1]')';
pLeftBallHandLocation = pLeftBallHandLocation(1,1:3); 

% Segment 16 - rightUpperLeg
pRightGreaterTrochanterLocation  = (hip_T_upperLeg*[pRightGreaterTrochanterLocation, 1]')';
pRightGreaterTrochanterLocation = pRightGreaterTrochanterLocation(1,1:3); 
pRightPatellaLocation  = (hip_T_upperLeg*[pRightPatellaLocation, 1]')';
pRightPatellaLocation = pRightPatellaLocation(1,1:3); 

% Segment 17 - rightLowerLeg
pRightKneeLatEpicondyleLocation  = (knee_T_lowerLeg*[pRightKneeLatEpicondyleLocation, 1]')';
pRightKneeLatEpicondyleLocation = pRightKneeLatEpicondyleLocation(1,1:3); 
pRightKneeMedEpicondyleLocation  = (knee_T_lowerLeg*[pRightKneeMedEpicondyleLocation, 1]')';
pRightKneeMedEpicondyleLocation = pRightKneeMedEpicondyleLocation(1,1:3); 
pRightLatMalleolusLocation  = (knee_T_lowerLeg*[pRightLatMalleolusLocation, 1]')';
pRightLatMalleolusLocation = pRightLatMalleolusLocation(1,1:3); 
pRightMedMalleolusLocation  = (knee_T_lowerLeg*[pRightMedMalleolusLocation, 1]')';
pRightMedMalleolusLocation  = pRightMedMalleolusLocation(1,1:3); 
pRightTibialTubLocation  = (knee_T_lowerLeg*[pRightTibialTubLocation, 1]')';
pRightTibialTubLocation =  pRightTibialTubLocation(1,1:3); 

% Segment 20 - leftUpperLeg
pLeftGreaterTrochanterLocation  = (hip_T_upperLeg*[pLeftGreaterTrochanterLocation, 1]')';
pLeftGreaterTrochanterLocation = pLeftGreaterTrochanterLocation(1,1:3); 
pLeftPatellaLocation  = (hip_T_upperLeg*[pLeftPatellaLocation, 1]')';
pLeftPatellaLocation = pLeftPatellaLocation(1,1:3); 

% Segment 21 - leftLowerLeg
pLeftKneeLatEpicondyleLocation  = (knee_T_lowerLeg*[pLeftKneeLatEpicondyleLocation, 1]')';
pLeftKneeLatEpicondyleLocation = pLeftKneeLatEpicondyleLocation(1,1:3); 
pLeftKneeMedEpicondyleLocation  = (knee_T_lowerLeg*[pLeftKneeMedEpicondyleLocation, 1]')';
pLeftKneeMedEpicondyleLocation = pLeftKneeMedEpicondyleLocation(1,1:3); 
pLeftLatMalleolusLocation  = (knee_T_lowerLeg*[pLeftLatMalleolusLocation, 1]')';
pLeftLatMalleolusLocation = pLeftLatMalleolusLocation(1,1:3); 
pLeftMedMalleolusLocation  = (knee_T_lowerLeg*[pLeftMedMalleolusLocation, 1]')';
pLeftMedMalleolusLocation  = pLeftMedMalleolusLocation(1,1:3); 
pLeftTibialTubLocation  = (knee_T_lowerLeg*[pLeftTibialTubLocation, 1]')';
pLeftTibialTubLocation =  pLeftTibialTubLocation(1,1:3); 

% Segment 18 - rightFoot
pRightHeelFootLocation  = (ankle_T_foot*[pRightHeelFootLocation, 1]')';
pRightHeelFootLocation = pRightHeelFootLocation(1,1:3); 
pRightFirstMetatarsalLocation  = (ankle_T_foot*[pRightFirstMetatarsalLocation, 1]')';
pRightFirstMetatarsalLocation = pRightFirstMetatarsalLocation(1,1:3); 
pRightFifthMetatarsalLocation = (ankle_T_foot*[pRightFifthMetatarsalLocation, 1]')';
pRightFifthMetatarsalLocation = pRightFifthMetatarsalLocation(1,1:3);  
pRightPivotFootLocation  = (ankle_T_foot*[pRightPivotFootLocation, 1]')';
pRightPivotFootLocation = pRightPivotFootLocation(1,1:3); 
pRightHeelCenterLocation  = (ankle_T_foot*[pRightHeelCenterLocation, 1]')';
pRightHeelCenterLocation = pRightHeelCenterLocation(1,1:3); 

% Segment 19 - rightToe
pRightToeLocation  = (ballFoot_T_toe*[pRightToeLocation, 1]')';
pRightToeLocation = pRightToeLocation(1,1:3); 

% Segment 22 - leftFoot
pLeftHeelFootLocation  = (ankle_T_foot*[pLeftHeelFootLocation, 1]')';
pLeftHeelFootLocation = pLeftHeelFootLocation(1,1:3); 
pLeftFirstMetatarsalLocation  = (ankle_T_foot*[pLeftFirstMetatarsalLocation, 1]')';
pLeftFirstMetatarsalLocation = pLeftFirstMetatarsalLocation(1,1:3); 
pLeftFifthMetatarsalLocation = (ankle_T_foot*[pLeftFifthMetatarsalLocation, 1]')';
pLeftFifthMetatarsalLocation = pLeftFifthMetatarsalLocation(1,1:3);  
pLeftPivotFootLocation  = (ankle_T_foot*[pLeftPivotFootLocation, 1]')';
pLeftPivotFootLocation = pLeftPivotFootLocation(1,1:3); 
pLeftHeelCenterLocation  = (ankle_T_foot*[pLeftHeelCenterLocation, 1]')';
pLeftHeelCenterLocation = pLeftHeelCenterLocation(1,1:3); 

% Segment 23 - leftToe
pLeftToeLocation  = (ballFoot_T_toe*[pLeftToeLocation, 1]')';
pLeftToeLocation = pLeftToeLocation(1,1:3); 

%% Saving Data for template

pointsLocation(subjectID).pHipOriginLocation = pHipOriginLocation;
pointsLocation(subjectID).pRightASILocation = pRightASILocation;
pointsLocation(subjectID).pLeftASILocation = pLeftASILocation;
pointsLocation(subjectID).pRightCSILocation = pRightCSILocation;
pointsLocation(subjectID).pLeftCSILocation = pLeftCSILocation;
pointsLocation(subjectID).pRightIschialTubLocation = pRightIschialTubLocation;
pointsLocation(subjectID).pLeftIschialTubLocation = pLeftIschialTubLocation;
pointsLocation(subjectID).pSacrumLocation = pSacrumLocation;
pointsLocation(subjectID).pL5SpinalProcessLocation = pL5SpinalProcessLocation;
pointsLocation(subjectID).pL3SpinalProcessLocation = pL3SpinalProcessLocation;
pointsLocation(subjectID).pT12SpinalProcessLocation = pT12SpinalProcessLocation;
pointsLocation(subjectID).pPXLocation = pPXLocation;
pointsLocation(subjectID).pIJLocation = pIJLocation;
pointsLocation(subjectID).pT4SpinalProcessLocation = pT4SpinalProcessLocation;
pointsLocation(subjectID).pT8SpinalProcessLocation = pT8SpinalProcessLocation;
pointsLocation(subjectID).pC7SpinalProcessLocation = pC7SpinalProcessLocation;
pointsLocation(subjectID).pTopOfHeadLocation = pTopOfHeadLocation;
pointsLocation(subjectID).pRightAuricularisLocation = pRightAuricularisLocation;
pointsLocation(subjectID).pLeftAuricularisLocation = pLeftAuricularisLocation;
pointsLocation(subjectID).pBackOfHeadLocation = pBackOfHeadLocation;

pointsLocation(subjectID).pRightAcromionLocation = pRightAcromionLocation;
pointsLocation(subjectID).pLeftAcromionLocation = pLeftAcromionLocation;
pointsLocation(subjectID).pRightArmLatEpicondyleLocation = pRightArmLatEpicondyleLocation;
pointsLocation(subjectID).pRightArmMedEpicondyleLocation = pRightArmMedEpicondyleLocation;
pointsLocation(subjectID).pLeftArmLatEpicondyleLocation = pLeftArmLatEpicondyleLocation;
pointsLocation(subjectID).pLeftArmMedEpicondyleLocation = pLeftArmMedEpicondyleLocation;
pointsLocation(subjectID).pRightUlnarStyloidLocation = pRightUlnarStyloidLocation;
pointsLocation(subjectID).pRightRadialStyloidLocation = pRightRadialStyloidLocation;
pointsLocation(subjectID).pRightOlecranonLocation = pRightOlecranonLocation;
pointsLocation(subjectID).pLeftUlnarStyloidLocation = pLeftUlnarStyloidLocation;
pointsLocation(subjectID).pLeftRadialStyloidLocation = pLeftRadialStyloidLocation;
pointsLocation(subjectID).pLeftOlecranonLocation = pLeftOlecranonLocation;
pointsLocation(subjectID).pRightTopOfHandLocation = pRightTopOfHandLocation;
pointsLocation(subjectID).pRightPinkyLocation = pRightPinkyLocation;
pointsLocation(subjectID).pRightBallHandLocation = pRightBallHandLocation;
pointsLocation(subjectID).pLeftTopOfHandLocation = pLeftTopOfHandLocation;
pointsLocation(subjectID).pLeftPinkyLocation = pLeftPinkyLocation;
pointsLocation(subjectID).pLeftBallHandLocation = pLeftBallHandLocation;

pointsLocation(subjectID).pRightGreaterTrochanterLocation = pRightGreaterTrochanterLocation;
pointsLocation(subjectID).pRightKneeLatEpicondyleLocation = pRightKneeLatEpicondyleLocation;
pointsLocation(subjectID).pRightKneeMedEpicondyleLocation = pRightKneeMedEpicondyleLocation;
pointsLocation(subjectID).pRightPatellaLocation = pRightPatellaLocation;
pointsLocation(subjectID).pLeftGreaterTrochanterLocation = pLeftGreaterTrochanterLocation;
pointsLocation(subjectID).pLeftKneeLatEpicondyleLocation = pLeftKneeLatEpicondyleLocation;
pointsLocation(subjectID).pLeftKneeMedEpicondyleLocation = pLeftKneeMedEpicondyleLocation;
pointsLocation(subjectID).pLeftPatellaLocation = pLeftPatellaLocation;
pointsLocation(subjectID).pRightLatMalleolusLocation = pRightLatMalleolusLocation;
pointsLocation(subjectID).pRightMedMalleolusLocation = pRightMedMalleolusLocation;
pointsLocation(subjectID).pRightTibialTubLocation = pRightTibialTubLocation;
pointsLocation(subjectID).pLeftLatMalleolusLocation = pLeftLatMalleolusLocation;
pointsLocation(subjectID).pLeftMedMalleolusLocation = pLeftMedMalleolusLocation;
pointsLocation(subjectID).pLeftTibialTubLocation = pLeftTibialTubLocation;
pointsLocation(subjectID).pRightHeelFootLocation = pRightHeelFootLocation;
pointsLocation(subjectID).pRightFirstMetatarsalLocation = pRightFirstMetatarsalLocation;
pointsLocation(subjectID).pRightFifthMetatarsalLocation = pRightFifthMetatarsalLocation;
pointsLocation(subjectID).pRightPivotFootLocation = pRightPivotFootLocation;
pointsLocation(subjectID).pRightHeelCenterLocation = pRightHeelCenterLocation;
pointsLocation(subjectID).pRightToeLocation = pRightToeLocation;
pointsLocation(subjectID).pLeftHeelFootLocation = pLeftHeelFootLocation;
pointsLocation(subjectID).pLeftFirstMetatarsalLocation = pLeftFirstMetatarsalLocation;
pointsLocation(subjectID).pLeftFifthMetatarsalLocation = pLeftFifthMetatarsalLocation;
pointsLocation(subjectID).pLeftPivotFootLocation = pLeftPivotFootLocation;
pointsLocation(subjectID).pLeftHeelCenterLocation = pLeftHeelCenterLocation;
pointsLocation(subjectID).pLeftToeLocation = pLeftToeLocation;

fprintf('---------\n');
fprintf('End of extraction\n');
save('pointsLocation');

