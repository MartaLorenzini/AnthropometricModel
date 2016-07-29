% This script allows to find the anthropometric parameters of the subject
% given his height H and mass M. Employing the anthropometric tables it is
% possible to estimate: 
%   - geometric parameters of the solids (cylinders, boxes or spheres) 
%     representing each body segment    
%   - mass of each body segment
%   - momentum of inertia of each body segment

% The geometric dimensions of each solids are defined as:
%   - box: alpha is the width, beta is the heigth and gamma the depth
%   - cylinder: radius and heigth (diameter case)
%   - sphere: radius (diameter in case)

clear all
close all
clc

%subject data
H = 1.70; %heigth in metres
M = 55; %mass in kilograms

subjectID=1;

%% FOOT (box)
% Geometric dimensions
footAlpha = 0.055*H;
footBeta = 0.039*H;
footGamma = 0.152*H;
halfFootBeta = 0.5*footBeta;
anklePosition = 0.25*footGamma;
% Mass and inertia
footMass = 0.0145*M;
footIxx = (footMass/12)*(footAlpha^2 + footBeta^2);
footIyy = (footMass/12)*(footBeta^2 + footGamma^2);
footIzz = (footMass/12)*(footGamma^2 + footAlpha^2);

%% LOWER LEG (cylinder)
% Geometric dimensions
lowerLegHeigth = 0.246*H;
halfLowerLegHeigth = 0.5*lowerLegHeigth;
lowerLegRadius = 0.25*footGamma; %arbitrarily defined as 1/4 of the foot depth
% Mass and inertia
lowerLegMass = 0.0465*M;
lowerLegIxx = (lowerLegMass/12)*(3*lowerLegRadius^2 + lowerLegHeigth^2);
lowerLegIyy = (lowerLegMass/12)*(3*lowerLegRadius^2 + lowerLegHeigth^2);
lowerLegIzz = (lowerLegMass/2)*(lowerLegRadius^2);

%% TORSO (box)
% Geometric dimensions
torsoAlpha = 0.5*(0.191*H+0.259*H); %arbitrarily defined as the mean of hip width and shoulder width
torsoBeta = 0.288*H;
torsoGamma = 0.75*footGamma; %arbitrarily defined as 3/4 of the foot depth
halfTorsoBeta = 0.5*torsoBeta;
% Mass and inertia
torsoMass = 0.497*M;
torsoIxx = (torsoMass/12)*(torsoAlpha^2 + torsoBeta^2);
torsoIyy = (torsoMass/12)*(torsoBeta^2 + torsoGamma^2);
torsoIzz = (torsoMass/12)*(torsoGamma^2 + torsoAlpha^2);

%% UPPER LEG (cylinder)
% Geometric dimensions
upperLegHeigth = 0.245*H;
halfUpperLegHeigth = 0.5*upperLegHeigth;
upperLegDiameter = 0.5*(2*lowerLegRadius+0.5*torsoAlpha); %arbitrarily defined as the mean of the width of the lower leg and the half width of the torso
upperLegRadius = 0.5*upperLegDiameter;

midTorsoPosition=0.5*(torsoAlpha-2*upperLegRadius); % distance between right hip and the mid point of the torso
leftHipPosition = 2*midTorsoPosition; % distance between right hip and left hip
% Mass and inertia
upperLegMass = 0.100*M;
upperLegIxx = (upperLegMass/12)*(3*upperLegRadius^2 + upperLegHeigth^2);
upperLegIyy = (upperLegMass/12)*(3*upperLegRadius^2 + upperLegHeigth^2);
upperLegIzz = (upperLegMass/2)*(upperLegRadius^2);

%% UPPER ARM (cylinder)
% Geometric dimensions
upperArmRadius = lowerLegRadius; %radius of tha arm define equal to the radius of the lower leg
upperArmHeigth = 0.186*H;
halfUpperArmHeigth = 0.5*upperArmHeigth;

shoulderHeigth = torsoBeta-upperArmRadius;
shoulderPosition = halfUpperArmHeigth-upperArmRadius; %distance between the centre of the upper arm and the hip, along z
rightShoulderPosition = upperLegRadius; %distance between the RF of the torso and the right shoulder, along y
leftShoulderPosition = 2*midTorsoPosition + upperLegRadius; %distance between the RF of the torso and the left shoulder, along y
% Mass and inertia
upperArmMass = 0.028*M;
upperArmIxx = (upperArmMass/12)*(3*upperArmRadius^2 + upperArmHeigth^2);
upperArmIyy = (upperArmMass/12)*(3*upperArmRadius^2 + upperArmHeigth^2);
upperArmIzz = (upperArmMass/2)*(upperArmRadius^2);

%% LOWER ARM (cylinder)
% Geometric dimensions
lowerArmRadius = 0.75*upperArmRadius; %arbitrarily defined as the 3/4 of the upper arm radius
lowerArmHeigth = 0.146*H;
halfLowerArmHeigth = 0.5*lowerArmHeigth;
ElbowPosition = upperArmHeigth - upperArmRadius; %distance between the shoulder and the elbow, along z 
% Mass and inertia
lowerArmMass = 0.016*M;
lowerArmIxx = (lowerArmMass/12)*(3*lowerArmRadius^2 + lowerArmHeigth^2);
lowerArmIyy = (lowerArmMass/12)*(3*lowerArmRadius^2 + lowerArmHeigth^2);
lowerArmIzz = (lowerArmMass/2)*(lowerArmRadius^2);

%% HEAD (sphere)
% Geometric dimensions
headDiameter= 0.13*H; %heigth of the head
headRadius = 0.5*headDiameter;
% Mass and inertia
headMass = 0.006*M;
headIxx = (2*headMass/5)*(headRadius^2);
headIyy = (2*headMass/5)*(headRadius^2);
headIzz = (2*headMass/5)*(headRadius^2);

%% SAVE
% FOOT
subjectParams(subjectID).footWidth = footAlpha;
subjectParams(subjectID).footHeight = footBeta;
subjectParams(subjectID).footDepth = footGamma;
subjectParams(subjectID).halfFootHeigth = halfFootBeta;
subjectParams(subjectID).anklePosition = anklePosition;

subjectParams(subjectID).footMass = footMass;
subjectParams(subjectID).footIxx = footIxx;
subjectParams(subjectID).footIyy = footIyy; 
subjectParams(subjectID).footIzz = footIzz;

% LOWER LEG
subjectParams(subjectID).lowerLegHeight = lowerLegHeigth;
subjectParams(subjectID).lowerLegRadius = lowerLegRadius;
subjectParams(subjectID).halfLowerLegHeigth = halfLowerLegHeigth;

subjectParams(subjectID).lowerLegMass = lowerLegMass;
subjectParams(subjectID).lowerLegIxx = lowerLegIxx;
subjectParams(subjectID).lowerLegIyy = lowerLegIyy;
subjectParams(subjectID).lowerLegIzz = lowerLegIzz;

% UPPER LEG
subjectParams(subjectID).upperLegHeight = upperLegHeigth;
subjectParams(subjectID).upperLegRadius = upperLegRadius;
subjectParams(subjectID).halfUpperLegHeigth = halfUpperLegHeigth;

subjectParams(subjectID).midTorsoPosition = midTorsoPosition;
subjectParams(subjectID).leftHipPosition = leftHipPosition;

subjectParams(subjectID).upperLegMass = upperLegMass;
subjectParams(subjectID).upperLegIxx = upperLegIxx;
subjectParams(subjectID).upperLegIyy = upperLegIyy;
subjectParams(subjectID).upperLegIzz = upperLegIzz;

% TORSO
subjectParams(subjectID).torsoWidth = torsoAlpha;
subjectParams(subjectID).torsoHeight = torsoBeta;
subjectParams(subjectID).torsoDepth = torsoGamma;
subjectParams(subjectID).halfTorsoHeigth = halfTorsoBeta;

subjectParams(subjectID).torsoMass = torsoMass;
subjectParams(subjectID).torsoIxx = torsoIxx;
subjectParams(subjectID).torsoIyy = torsoIyy;
subjectParams(subjectID).torsoIzz = torsoIzz;

% UPPER ARM
subjectParams(subjectID).upperArmRadius = upperArmRadius;
subjectParams(subjectID).upperArmHeight = upperArmHeigth;
subjectParams(subjectID).halfUpperArmHeigth = halfUpperArmHeigth;

subjectParams(subjectID).shoulderHeigth = shoulderHeigth;
subjectParams(subjectID).shoulderPosition = shoulderPosition;
subjectParams(subjectID).rightShoulderPosition = rightShoulderPosition;
subjectParams(subjectID).leftShoulderPosition = leftShoulderPosition;

subjectParams(subjectID).upperArmMass = upperArmMass;
subjectParams(subjectID).upperArmIxx = upperArmIxx;
subjectParams(subjectID).upperArmIyy = upperArmIyy;
subjectParams(subjectID).upperArmIzz = upperArmIzz;

% LOWER ARM
subjectParams(subjectID).lowerArmRadius = lowerArmRadius;
subjectParams(subjectID).lowerArmHeight = lowerArmHeigth;
subjectParams(subjectID).halfLowerArmHeigth = halfLowerArmHeigth;
subjectParams(subjectID).ElbowPosition = ElbowPosition;

subjectParams(subjectID).lowerArmMass = lowerArmMass;
subjectParams(subjectID).lowerArmIxx = lowerArmIxx;
subjectParams(subjectID).lowerArmIyy = lowerArmIyy;
subjectParams(subjectID).lowerArmIzz = lowerArmIzz;

% HEAD
subjectParams(subjectID).headHeigth = headDiameter;
subjectParams(subjectID).headRadius = headRadius;

subjectParams(subjectID).headMass = headMass;
subjectParams(subjectID).headIxx = headIxx;
subjectParams(subjectID).headIyy = headIyy; 
subjectParams(subjectID).headIzz = headIzz;

fprintf('---------\n');
fprintf('End of computation\n');
save('subjectParams');

