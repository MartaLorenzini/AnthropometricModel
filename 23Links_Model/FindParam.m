% This script allows to find the anthropometric parameters of the subject
% given his height H and mass M. Employing the anthropometric tables it is
% possible to estimate: 
%   - geometric parameters of the solids (cylinders, boxes or spheres) 
%     representing each body segment    
%   - mass of each body segment
%   - momentum of inertia of each body segment

% The geometric dimensions of each solids are defined as:
%   - box: Alfa is the width, beta is the Height and gamma the depth
%   - cylinder: radius and Height (diameter case)
%   - sphere: radius (diameter in case)

clear all
close all
clc
format longg %for decimal notation

%subject data
H = 1.72; %Height in metres
M = 55; %mass in kilograms

subjectID=1;

%% FOOT (box)
% Geometric dimensions
footAlfa = 0.055*H;
% footBeta = 0.039*H;
footBeta = 0.058*H;
footGamma = 0.110*H;
footHalfBeta = 0.5*footBeta;
footHalfGamma = 0.5*footGamma;
anklePosX = 0.25*footGamma;
toePosX = footHalfGamma + anklePosX;
% Mass and inertia
footMass = 0.0130*M;
footIxx = (footMass/12)*(footAlfa^2 + footBeta^2);
footIyy = (footMass/12)*(footBeta^2 + footGamma^2);
footIzz = (footMass/12)*(footGamma^2 + footAlfa^2);

%% TOE (box)
% Geometric dimensions
toeAlfa = 0.055*H;
toeBeta = 0.039*H;
toeGamma = 0.042*H;
toeHalfGamma = 0.5*toeGamma;
% Mass and inertia
toeMass = 0.0015*M;
toeIxx = (toeMass/12)*(toeAlfa^2 + toeBeta^2);
toeIyy = (toeMass/12)*(toeBeta^2 + toeGamma^2);
toeIzz = (toeMass/12)*(toeGamma^2 + toeAlfa^2);

%% LOWER LEG (cylinder)
% Geometric dimensions
lowerLegHeight = 0.246*H;
lowerLegHalfHeight = 0.5*lowerLegHeight;
lowerLegRadius = 0.25*footGamma; %arbitrarily defined as 1/4 of the foot depth
lowerLegDiameter = 0.5*footGamma;
% Mass and inertia
lowerLegMass = 0.0465*M;
lowerLegIxx = (lowerLegMass/12)*(3*lowerLegRadius^2 + lowerLegHeight^2);
lowerLegIyy = (lowerLegMass/12)*(3*lowerLegRadius^2 + lowerLegHeight^2);
lowerLegIzz = (lowerLegMass/2)*(lowerLegRadius^2);

%% TORSO (box)
% Geometric dimensions
torsoAlfa = 0.5*(0.191*H+0.259*H); %arbitrarily defined as the mean of hip width and shoulder width
torsoBeta = 0.288*H;
torsoGamma = 0.75*footGamma; %arbitrarily defined as 3/4 of the foot depth
torsoHalfBeta = 0.5*torsoBeta;
% Mass and inertia
torsoMass = 0.497*M;
torsoIxx = (torsoMass/12)*(torsoAlfa^2 + torsoBeta^2);
torsoIyy = (torsoMass/12)*(torsoBeta^2 + torsoGamma^2);
torsoIzz = (torsoMass/12)*(torsoGamma^2 + torsoAlfa^2);

%% UPPER LEG (cylinder)
% Geometric dimensions
upperLegHeight = 0.245*H;
upperLegHalfHeight = 0.5*upperLegHeight;
upperLegDiameter = 0.5*(2*lowerLegRadius+0.5*torsoAlfa); %arbitrarily defined as the mean of the width of the lower leg and the half width of the torso
upperLegRadius = 0.5*upperLegDiameter;
HipPosY = 0.5*(torsoAlfa-2*upperLegRadius); % distance between right hip and the mid point of the torso along y
HipDoublePosY = 2*HipPosY;
% Mass and inertia
upperLegMass = 0.100*M;
upperLegIxx = (upperLegMass/12)*(3*upperLegRadius^2 + upperLegHeight^2);
upperLegIyy = (upperLegMass/12)*(3*upperLegRadius^2 + upperLegHeight^2);
upperLegIzz = (upperLegMass/2)*(upperLegRadius^2);

%% PELVIS (box)
% Geometric dimensions
pelvisAlfa = 0.191*H; 
pelvisBeta = 0.1887*torsoBeta;
pelvisGamma = footGamma; %arbitrarily defined as the foot depth
pelvisHalfBeta = 0.5*pelvisBeta;
% Mass and inertia
pelvisMass = 0.1750*torsoMass;
pelvisIxx = (pelvisMass/12)*(pelvisAlfa^2 + pelvisBeta^2);
pelvisIyy = (pelvisMass/12)*(pelvisBeta^2 + pelvisGamma^2);
pelvisIzz = (pelvisMass/12)*(pelvisGamma^2 + pelvisAlfa^2);

%% L5 (cylinder)
% Geometric dimensions
L5DiameterX = torsoGamma; 
L5RadiusX = L5DiameterX/2;
L5DiameterY = 0.174*H; 
L5RadiusY = L5DiameterY/2;
L5Height = 0.2004*torsoBeta;
L5HalfHeight = 0.5*L5Height;
% Mass and inertia
L5Mass = 0.0998*torsoMass;
L5Ixx = (L5Mass/12)*(3*L5RadiusY^2 + L5Height^2);
L5Iyy = (L5Mass/12)*(3*L5RadiusX^2 + L5Height^2);
L5Izz = (L5Mass/2)*(L5RadiusX*L5RadiusY);

%% L3 (cylinder)
% Geometric dimensions
L3DiameterX = torsoGamma; 
L3RadiusX = L3DiameterX/2;
L3DiameterY = 0.174*H; 
L3RadiusY = L3DiameterY/2;
L3Height = 0.1810*torsoBeta;
L3HalfHeight = 0.5*L3Height;
% Mass and inertia
L3Mass = 0.0901*torsoMass;
L3Ixx = (L3Mass/12)*(3*L3RadiusY^2 + L3Height^2);
L3Iyy = (L3Mass/12)*(3*L3RadiusX^2 + L3Height^2);
L3Izz = (L3Mass/2)*(L3RadiusX*L3RadiusY);

%% T12 (cylinder)
% Geometric dimensions
T12DiameterX = torsoGamma; 
T12RadiusX = T12DiameterX/2;
T12DiameterY = 0.174*H; 
T12RadiusY = T12DiameterY/2;
T12Height = 0.1810*torsoBeta;
T12HalfHeight = 0.5*T12Height;
% Mass and inertia
T12Mass = 0.0901*torsoMass;
T12Ixx = (T12Mass/12)*(3*T12RadiusY^2 + T12Height^2);
T12Iyy = (T12Mass/12)*(3*T12RadiusX^2 + T12Height^2);
T12Izz = (T12Mass/2)*(T12RadiusX*T12RadiusY);

%% T8 (box)
% Geometric dimensions
T8Alfa = 0.0553*H; 
T8Beta = 0.2489*torsoBeta;
T8Gamma = torsoGamma; 
T8HalfBeta = 0.5*T8Beta;
T8HalfAlfa = 0.5*T8Alfa;
% Mass and inertia
T8Mass = 0.0501*torsoMass;
T8Ixx = (T8Mass/12)*(T8Alfa^2 + T8Beta^2);
T8Iyy = (T8Mass/12)*(T8Beta^2 + T8Gamma^2);
T8Izz = (T8Mass/12)*(T8Gamma^2 + T8Alfa^2);

%% SHOULDER (cylinder)
% Geometric dimensions
shoulderDiameter = 0.1019*torsoBeta; 
shoulderRadius = 0.5*shoulderDiameter;
shoulderHeight = 0.129*H;
shoulderHalfHeight = 0.5*shoulderHeight;
shoulderPosZ = T8HalfBeta - shoulderRadius; %distance between the centre of t8 and the joint C7shoulder, along z
shoulderUrdfPosZ = T8Beta - shoulderRadius; %distance between the joint jT9T8 and the joint C7shoulder, along z
% Mass and inertia
shoulderMass = 0.2474*torsoMass;
shoulderIxx = (shoulderMass/12)*(3*shoulderRadius^2 + shoulderHeight^2);
shoulderIyy = (shoulderMass/2)*(shoulderRadius^2);
shoulderIzz = (shoulderMass/12)*(3*shoulderRadius^2 + shoulderHeight^2);

%% UPPER ARM (cylinder)
% Geometric dimensions
upperArmRadius = lowerLegRadius; %radius of tha arm define equal to the radius of the lower leg
upperArmDiameter = upperArmRadius*2;
upperArmHeight = 0.186*H;
upperArmHalfHeight = 0.5*upperArmHeight;
armPosZ = upperArmHalfHeight - shoulderRadius; %distance between the centre of the upper arm and the joint shoulder, along z
armUrdfPosZ = upperArmHalfHeight + armPosZ; %distance between the elbow and the joint shoulder, along z
% Mass and inertia
upperArmMass = 0.028*M;
upperArmIxx = (upperArmMass/12)*(3*upperArmRadius^2 + upperArmHeight^2);
upperArmIyy = (upperArmMass/12)*(3*upperArmRadius^2 + upperArmHeight^2);
upperArmIzz = (upperArmMass/2)*(upperArmRadius^2);

%% FOREARM (cylinder)
% Geometric dimensions
foreArmRadius = 0.75*upperArmRadius; %arbitrarily defined as the 3/4 of the upper arm radius
foreArmDiameter = foreArmRadius*2;
foreArmHeight = 0.146*H;
foreArmHalfHeight = 0.5*foreArmHeight;
% Mass and inertia
foreArmMass = 0.016*M;
foreArmIxx = (foreArmMass/12)*(3*foreArmRadius^2 + foreArmHeight^2);
foreArmIyy = (foreArmMass/12)*(3*foreArmRadius^2 + foreArmHeight^2);
foreArmIzz = (foreArmMass/2)*(foreArmRadius^2);

%% HAND (box)
% Geometric dimensions
handGamma = foreArmDiameter; %arbitrarily defined as the width of the forearm
handBeta = 0.108*H;
handAlfa = foreArmRadius; %arbitrarily defined as the half depth of the forearm
handHalfBeta = 0.5*handBeta;
% Mass and inertia
handMass = 0.006*M;
handIxx = (handMass/12)*(handGamma^2 + handBeta^2);
handIyy = (handMass/12)*(handBeta^2 + handAlfa^2);
handIzz = (handMass/12)*(handAlfa^2 + handGamma^2);

%% HEAD (sphere)
% Geometric dimensions
headDiameter = 0.13*H; %Height of the head
headRadius = 0.5*headDiameter;
% Mass and inertia
headMass = 0.006*M;
headIxx = (2*headMass/5)*(headRadius^2);
headIyy = (2*headMass/5)*(headRadius^2);
headIzz = (2*headMass/5)*(headRadius^2);

%% NECK (cylinder)
% Geometric dimensions
neckRadius = 0.5*headRadius; %arbitrarily defined as the half of the head radius
neckDiameter = neckRadius*2;
neckHeight = 0.066*H;
neckHalfHeight = 0.5*neckHeight;
% Mass and inertia
neckMass = 0.016*M;
neckIxx = (neckMass/12)*(3*neckRadius^2 + neckHeight^2);
neckIyy = (neckMass/12)*(3*neckRadius^2 + neckHeight^2);
neckIzz = (neckMass/2)*(neckRadius^2);

%% SAVE
% FOOT
subjectParams(subjectID).footAlfa = footAlfa;
subjectParams(subjectID).footBeta = footBeta;
subjectParams(subjectID).footGamma = footGamma;
subjectParams(subjectID).footHalfBeta = footHalfBeta;
subjectParams(subjectID).footHalfGamma = footHalfGamma;
subjectParams(subjectID).anklePosX = anklePosX;
subjectParams(subjectID).toePosX = toePosX;

subjectParams(subjectID).footMass = footMass;
subjectParams(subjectID).footIxx = footIxx;
subjectParams(subjectID).footIyy = footIyy; 
subjectParams(subjectID).footIzz = footIzz;

% TOE
subjectParams(subjectID).toeAlfa = toeAlfa;
subjectParams(subjectID).toeBeta = toeBeta;
subjectParams(subjectID).toeGamma = toeGamma;
subjectParams(subjectID).toeHalfGamma = toeHalfGamma;

subjectParams(subjectID).toeMass = toeMass;
subjectParams(subjectID).toeIxx = toeIxx;
subjectParams(subjectID).toeIyy = toeIyy; 
subjectParams(subjectID).toeIzz = toeIzz;

% LOWER LEG
subjectParams(subjectID).lowerLegHeight = lowerLegHeight;
subjectParams(subjectID).lowerLegRadius = lowerLegRadius;
subjectParams(subjectID).lowerLegDiameter = lowerLegDiameter;
subjectParams(subjectID).lowerLegHalfHeight = lowerLegHalfHeight;

subjectParams(subjectID).lowerLegMass = lowerLegMass;
subjectParams(subjectID).lowerLegIxx = lowerLegIxx;
subjectParams(subjectID).lowerLegIyy = lowerLegIyy;
subjectParams(subjectID).lowerLegIzz = lowerLegIzz;

% UPPER LEG
subjectParams(subjectID).upperLegHeight = upperLegHeight;
subjectParams(subjectID).upperLegRadius = upperLegRadius;
subjectParams(subjectID).upperLegDiameter = upperLegDiameter;
subjectParams(subjectID).upperLegHalfHeight = upperLegHalfHeight;
subjectParams(subjectID).HipPosY = HipPosY;
subjectParams(subjectID).HipDoublePosY = HipDoublePosY;

subjectParams(subjectID).upperLegMass = upperLegMass;
subjectParams(subjectID).upperLegIxx = upperLegIxx;
subjectParams(subjectID).upperLegIyy = upperLegIyy;
subjectParams(subjectID).upperLegIzz = upperLegIzz;

% TORSO
subjectParams(subjectID).torsoAlfa = torsoAlfa;
subjectParams(subjectID).torsoBeta = torsoBeta;
subjectParams(subjectID).torsoGamma = torsoGamma;
subjectParams(subjectID).torsoHalfBeta = torsoHalfBeta;

subjectParams(subjectID).torsoMass = torsoMass;
subjectParams(subjectID).torsoIxx = torsoIxx;
subjectParams(subjectID).torsoIyy = torsoIyy;
subjectParams(subjectID).torsoIzz = torsoIzz;

% PELVIS
subjectParams(subjectID).pelvisAlfa = pelvisAlfa;
subjectParams(subjectID).pelvisBeta = pelvisBeta;
subjectParams(subjectID).pelvisGamma = pelvisGamma;
subjectParams(subjectID).pelvisHalfBeta = pelvisHalfBeta;

subjectParams(subjectID).pelvisMass = pelvisMass;
subjectParams(subjectID).pelvisIxx = pelvisIxx;
subjectParams(subjectID).pelvisIyy = pelvisIyy;
subjectParams(subjectID).pelvisIzz = pelvisIzz;

% L5
subjectParams(subjectID).L5Height = L5Height;
subjectParams(subjectID).L5RadiusX = L5RadiusX;
subjectParams(subjectID).L5RadiusY = L5RadiusY;
subjectParams(subjectID).L5DiameterX = L5DiameterX;
subjectParams(subjectID).L5DiameterY = L5DiameterY;
subjectParams(subjectID).L5HalfHeight = L5HalfHeight;

subjectParams(subjectID).L5Mass = L5Mass;
subjectParams(subjectID).L5Ixx = L5Ixx;
subjectParams(subjectID).L5Iyy = L5Iyy;
subjectParams(subjectID).L5Izz = L5Izz;

% L3
subjectParams(subjectID).L3Height = L3Height;
subjectParams(subjectID).L3RadiusX = L3RadiusX;
subjectParams(subjectID).L3RadiusY = L3RadiusY;
subjectParams(subjectID).L3DiameterX = L3DiameterX;
subjectParams(subjectID).L3DiameterY = L3DiameterY;
subjectParams(subjectID).L3HalfHeight = L3HalfHeight;


subjectParams(subjectID).L3Mass = L3Mass;
subjectParams(subjectID).L3Ixx = L3Ixx;
subjectParams(subjectID).L3Iyy = L3Iyy;
subjectParams(subjectID).L3Izz = L3Izz;

% T12
subjectParams(subjectID).T12Height = T12Height;
subjectParams(subjectID).T12RadiusX = T12RadiusX;
subjectParams(subjectID).T12RadiusY = T12RadiusY;
subjectParams(subjectID).T12DiameterX = T12DiameterX;
subjectParams(subjectID).T12DiameterY = T12DiameterY;
subjectParams(subjectID).T12HalfHeight = T12HalfHeight;


subjectParams(subjectID).T12Mass = T12Mass;
subjectParams(subjectID).T12Ixx = T12Ixx;
subjectParams(subjectID).T12Iyy = T12Iyy;
subjectParams(subjectID).T12Izz = T12Izz;

% T8
subjectParams(subjectID).T8Alfa = T8Alfa;
subjectParams(subjectID).T8Beta = T8Beta;
subjectParams(subjectID).T8Gamma = T8Gamma;
subjectParams(subjectID).T8HalfBeta = T8HalfBeta;
subjectParams(subjectID).T8HalfAlfa = T8HalfAlfa;

subjectParams(subjectID).T8Mass = T8Mass;
subjectParams(subjectID).T8Ixx = T8Ixx;
subjectParams(subjectID).T8Iyy = T8Iyy;
subjectParams(subjectID).T8Izz = T8Izz;

% SHOULDER
subjectParams(subjectID).shoulderRadius = shoulderRadius;
subjectParams(subjectID).shoulderHeight = shoulderHeight;
subjectParams(subjectID).shoulderHalfHeight = shoulderHalfHeight;
subjectParams(subjectID).shoulderDiameter = shoulderDiameter;
subjectParams(subjectID).shoulderPosZ = shoulderPosZ;
subjectParams(subjectID).shoulderUrdfPosZ = shoulderUrdfPosZ;

subjectParams(subjectID).shoulderMass = shoulderMass;
subjectParams(subjectID).shoulderIxx = shoulderIxx;
subjectParams(subjectID).shoulderIyy = shoulderIyy;
subjectParams(subjectID).shoulderIzz = shoulderIzz;

% UPPER ARM
subjectParams(subjectID).upperArmRadius = upperArmRadius;
subjectParams(subjectID).upperArmHeight = upperArmHeight;
subjectParams(subjectID).upperArmHalfHeight = upperArmHalfHeight;
subjectParams(subjectID).upperArmDiameter = upperArmDiameter;
subjectParams(subjectID).armPosZ = armPosZ;
subjectParams(subjectID).armUrdfPosZ = armUrdfPosZ;

subjectParams(subjectID).upperArmMass = upperArmMass;
subjectParams(subjectID).upperArmIxx = upperArmIxx;
subjectParams(subjectID).upperArmIyy = upperArmIyy;
subjectParams(subjectID).upperArmIzz = upperArmIzz;

% FOREARM
subjectParams(subjectID).foreArmRadius = foreArmRadius;
subjectParams(subjectID).foreArmDiameter = foreArmDiameter;
subjectParams(subjectID).foreArmHeight = foreArmHeight;
subjectParams(subjectID).foreArmHalfHeight = foreArmHalfHeight;

subjectParams(subjectID).foreArmMass = foreArmMass;
subjectParams(subjectID).foreArmIxx = foreArmIxx;
subjectParams(subjectID).foreArmIyy = foreArmIyy;
subjectParams(subjectID).foreArmIzz = foreArmIzz;

% HAND
subjectParams(subjectID).handAlfa = handGamma;
subjectParams(subjectID).handBeta = handBeta;
subjectParams(subjectID).handGamma = handGamma;
subjectParams(subjectID).handHalfBeta = handHalfBeta;

subjectParams(subjectID).handMass = handMass;
subjectParams(subjectID).handIxx = handIxx;
subjectParams(subjectID).handIyy = handIyy;
subjectParams(subjectID).handIzz = handIzz;

% NECK
subjectParams(subjectID).neckRadius = neckRadius;
subjectParams(subjectID).neckDiameter = neckDiameter;
subjectParams(subjectID).neckHeight = neckHeight;
subjectParams(subjectID).neckHalfHeight = neckHalfHeight;

subjectParams(subjectID).neckMass = neckMass;
subjectParams(subjectID).neckIxx = neckIxx;
subjectParams(subjectID).neckIyy = neckIyy;
subjectParams(subjectID).neckIzz = neckIzz;

% HEAD
subjectParams(subjectID).headDiameter = headDiameter;
subjectParams(subjectID).headRadius = headRadius;

subjectParams(subjectID).headMass = headMass;
subjectParams(subjectID).headIxx = headIxx;
subjectParams(subjectID).headIyy = headIyy; 
subjectParams(subjectID).headIzz = headIzz;

fprintf('---------\n');
fprintf('End of computation\n');
save('subjectParams');