UserRole role = [SELECT Id FROM UserRole WHERE Name = 'CEO'];
User currentUser = [SELECT Id, Country, UserRoleId FROM User WHERE Id = :UserInfo.getUserId()];
// currentUser.Country = 'Germany';
// currentUser.LanguageLocaleKey='en_US';
// currentUser.LocaleSidKey='en_US';
// currentUser.CountryCode='US';
currentUser.UserRoleId = role.Id;
update currentUser;