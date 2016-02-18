CREATE TABLE `User` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `privilege` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updatedBy` bigint(20) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UK_User_email` (`email`),
  KEY `FK_User_createdBy` (`createdBy`),
  KEY `FK_User_updatedBy` (`updatedBy`),
  CONSTRAINT `FK_User_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `User` (`userId`),
  CONSTRAINT `FK_User_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Group` (
  `groupId` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) NOT NULL,
  `groupDesc` varchar(255) NOT NULL,
  `groupLeadId` bigint(20) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updatedBy` bigint(20) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`groupId`),
  KEY `FK_Group_groupLeadId` (`groupLeadId`),
  KEY `FK_Group_createdBy` (`createdBy`),
  KEY `FK_Group_updatedBy` (`updatedBy`),
  CONSTRAINT `FK_Group_groupLeadId` FOREIGN KEY (`groupLeadId`) REFERENCES `User` (`userId`),
  CONSTRAINT `FK_Group_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `User` (`userId`),
  CONSTRAINT `FK_Group_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `User_Group` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UK_User_Group` (`userId`,`groupId`),
  KEY `FK_User_Group_groupId` (`groupId`),
  CONSTRAINT `FK_User_Group_userId` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`),
  CONSTRAINT `FK_User_Group_groupId` FOREIGN KEY (`groupId`) REFERENCES `Group` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Project` (
  `projectId` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(255) NOT NULL,
  `projectDesc` varchar(255) NOT NULL,
  `startDate` date,
  `endDate` date,
  `projStatus` int(11) NOT NULL,
  `createdBy` bigint(20) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updatedBy` bigint(20) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`projectId`),
  KEY `FK_Project_createdBy` (`createdBy`),
  KEY `FK_Project_updatedBy` (`updatedBy`),
  CONSTRAINT `FK_Project_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `User` (`userId`),
  CONSTRAINT `FK_Project_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `Group_Project` (
  `groupId` bigint(20) NOT NULL,
  `projectId` bigint(20) NOT NULL,
  UNIQUE KEY `UK_Group_Project` (`groupId`,`projectId`),
  KEY `FK_Group_Project_groupId` (`groupId`),
  KEY `FK_Group_Project_projectId` (`projectId`),
  CONSTRAINT `FK_Group_Project_groupId` FOREIGN KEY (`groupId`) REFERENCES `Group` (`groupId`),
  CONSTRAINT `FK_Group_Project_projectId` FOREIGN KEY (`projectId`) REFERENCES `Project` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `User_Project` (
  `userId` bigint(20) NOT NULL,
  `projectId` bigint(20) NOT NULL,
  UNIQUE KEY `UK_User_Project` (`userId`,`projectId`),
  KEY `FK_User_Project_userId` (`userId`),
  KEY `FK_User_Project_projectId` (`projectId`),
  CONSTRAINT `FK_User_Project_userId` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`),
  CONSTRAINT `FK_User_Project_projectId` FOREIGN KEY (`projectId`) REFERENCES `Project` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

