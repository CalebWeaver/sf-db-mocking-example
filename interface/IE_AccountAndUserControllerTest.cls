@IsTest
private class IE_AccountAndUserControllerTest {

	private static IE_AccountDAMock accountDA = new IE_AccountDAMock();
	private static IE_UserDAMock userDA = new IE_UserDAMock();

	@IsTest
	static void doAccountsAndUsersExist_givenAccountsAndUsersExist_shouldReturnTrue() {
		setupMocks();
		//Add data directly to the mocked DA
		accountDA.accounts.add(new Account());
		userDA.users.add(new User());

		System.assert(new IE_AccountAndUserController().doAccountsAndUsersExist(), 'Should have found at least one account and one user');
	}

	//Set the mocks on the client code, while allowing them to be accessed by our test
	private static void setupMocks() {
		IE_AccountAndUserController.AccountDA = accountDA;
		IE_AccountAndUserController.UserDA = userDA;
	}
}
