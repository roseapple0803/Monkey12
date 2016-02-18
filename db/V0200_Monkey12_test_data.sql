INSERT INTO `User` (userId, firstName, lastName, email, privilege, password, createdBy, createdOn, updatedBy, updatedOn) VALUES
  (1,'Albus', 'Dumbledore','admin@monkey12.ca','ADMIN','abc123',1,NOW(),1,NOW()),
  (2,'Minerva','McGonagall','minerva.mcgonagall@hogwarts.uk','GROUPLEADER','abc123',1,NOW(),1,NOW()),
  (3,'Severus','Snape','severus.snape@hogwarts.uk','GROUPLEADER','abc123',1,NOW(),1,NOW());


INSERT INTO `User` (firstName, lastName, email, privilege, password, createdBy, createdOn, updatedBy, updatedOn) VALUES
  ('Harry','Potter','harry.potter@hogwarts.uk','DEVELOPER','abc123',2,NOW(),2,NOW()),
  ('Hermione','Granger','hermione.granger@hogwarts.uk','DEVELOPER','abc123',2,NOW(),2,NOW()),
  ('Ronald','Weasley','ronald.weasley@hogwarts.uk','DEVELOPER','abc123',2,NOW(),2,NOW()),
  ('Draco','Malfoy','draco.malfoy@hogwarts.uk','DEVELOPER','abc123',3,NOW(),3,NOW()),
  ('Gregory','Goyle','gregory.goyle@hogwarts.uk','DEVELOPER','abc123',3,NOW(),3,NOW()),
  ('Vincent','Crabbe','vincent.grabbe@hogwarts.uk','DEVELOPER','abc123',3,NOW(),3,NOW());

INSERT INTO `Group` (groupName, groupDesc, groupLeadId, createdBy, createdOn, updatedBy, updatedOn) VALUES
('Potions','Bottle fame, brew glory!',3,3,NOW(),3,NOW()),
('Transfiguration','The art of changing the form and appearance of an object.',2,1,NOW(),2,NOW());
