#23Link_Model_SphericalJoint

These scripts allow to create an URDF human model constituted by twenty three links and pseudo-spherical joints starting from the height and the weigth of the subject.

Run first FindParam in order to compute the geometric dimensions, the mass and the momentum of intertia of each link of the subject
Run then createURDFModel_XSens in order to generate the URDF file containing the model

XSensSfericModel_URDFtemplate is the templete you need to create the model

List of the joints with the corresponding Degrees Of Freedom (DOF):

-jBallFoot (Toe-Foot): 1 DOF (Pitch)
-jAnkle (Foot-LowerLeg): 3 DOF (Pitch,Yaw,Roll)
-jKnee (lowerLeg-UpperLeg): 2 DOF (Pitch,Yaw)
-jHip (upperLeg-pelvis): 3 DOF (Pitch,Yaw,Roll)
-jL5S1 (pelvis-l5): 1 DOF (Pitch)
-jL4L3 (l5-l3): 3 DOF (Pitch,Yaw,Roll)
-jL1T12 (l3-t12): 1 DOF (Pitch)
-jT9T8 (t12-t8): 1 DOF (Pitch)
-jT1C7 (t8-neck): 3 DOF (Pitch,Yaw,Roll)
-jC1Head (neck-head): 2 DOF (Pitch,Roll)
-jC7Shoulder (t8-shoulder): 1 DOF (Yaw)
-jShoulder(Shoulder-upperArm): 3 DOF (Pitch,Yaw,Roll)
-jElbow(upperArm-foreArm): 2 DOF (Pitch,Yaw)
-jWrist(foreArm-hand): 1 DOF (Roll)