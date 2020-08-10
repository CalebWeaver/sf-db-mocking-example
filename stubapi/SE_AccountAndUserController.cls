public with sharing class SE_AccountAndUserController {

	public static SE_AccountDA AccountDA = new SE_AccountDA();
	public static SE_UserDA UserDA = new SE_UserDA();

	public Boolean doAccountsAndUsersExist() {
		Account acc = AccountDA.getOneAccount();
		User u = UserDA.getOneUser();
		return acc != null && u != null;
	}
}
