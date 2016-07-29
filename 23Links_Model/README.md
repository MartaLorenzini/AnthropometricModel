#23Link_Model
These scripts allow to create an OSIM human model constituted by twentythree links starting from the height and the weigth of the subject.

Run first FindParam in order to compute the geometric dimensions, the mass and the momentum of intertia of each link of the subject
Run then tree_xml to extract from a mvnx file all the body landmarks locations in the segments reference frame
Run then createOSIMModel_XSens in order to generate the OSIM file containing the model

XSensForcePlate_OSIMtemplate is the templete you need to create the model