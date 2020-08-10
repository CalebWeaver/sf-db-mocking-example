public with sharing class IE_AccountAndUserController {

	public static IE_AccountDAI AccountDA = new IE_AccountDA();
	public static IE_UserDAI UserDA = new IE_UserDA();

	public Boolean doAccountsAndUsersExist() {
		Account acc = AccountDA.getOneAccount();
		User u = UserDA.getOneUser();
		return acc != null && u != null;
	}
}
