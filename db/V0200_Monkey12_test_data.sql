INSERT INTO `User` (userId, firstName, lastName, email, privilege, password, createdBy, createdOn, updatedBy, updatedOn) VALUES
  (1,'Albus', 'Dumbledore','admin@monkey12.ca','ADMIN','abc123',1,NOW(),1,NOW()),
  (2,'Minerva','McGonagall','minerva.mcgonagall@hogwarts.uk','GROUPLEADER','abc123',1,NOW(),1,NOW()),
  (3,'Severus','Snape','severus.snape@hogwarts.uk','GROUPLEADER','abc123',1,NOW(),1,NOW()),
  (4,'Harry','Potter','harry.potter@hogwarts.uk','DEVELOPER','abc123',2,NOW(),2,NOW()),
  (5,'Hermione','Granger','hermione.granger@hogwarts.uk','DEVELOPER','abc123',2,NOW(),2,NOW()),
  (6,'Ronald','Weasley','ronald.weasley@hogwarts.uk','DEVELOPER','abc123',2,NOW(),2,NOW()),
  (7,'Draco','Malfoy','draco.malfoy@hogwarts.uk','DEVELOPER','abc123',3,NOW(),3,NOW()),
  (8,'Gregory','Goyle','gregory.goyle@hogwarts.uk','DEVELOPER','abc123',3,NOW(),3,NOW()),
  (9,'Vincent','Crabbe','vincent.grabbe@hogwarts.uk','DEVELOPER','abc123',3,NOW(),3,NOW());

INSERT INTO `Group` (groupId,groupName, groupDesc, groupLeadId, createdBy, createdOn, updatedBy, updatedOn) VALUES
(1,'Potions','Bottle fame, brew glory!',3,3,NOW(),3,NOW()),
(2,'Transfiguration','The art of changing the form and appearance of an object.',2,1,NOW(),2,NOW());

INSERT INTO `User_Group` (userId, groupId) VALUES
(2,2),
(4,2),
(5,2),
(6,2),
(3,1),
(7,1),
(8,1),
(9,1);

INSERT INTO `Project` (projectId, projectName, projectDesc, startDate, endDate, projStatus, createdBy, createdOn, updatedBy, updatedOn) VALUES
(1,'Polyjuice Challenge', 'Students compete to brew a difficult potion.', null, null, 1,3,NOW(),3,NOW()),
(2,'Project Spectacles', 'Owls become opera glasses', null, null, 1,2,NOW(),2,NOW());


INSERT INTO `User_Project` (userId, projectId) VALUES
(5,1),
(7,1),
(4,1),
(5,2),
(4,2);

INSERT INTO `Group_Project` (groupId, projectId) VALUES
(1,1),
(2,2);
