@IsTest
private class SE_AccountAndUserControllerTest {

	private static SE_SObjectDAStub accountDA = new SE_SObjectDAStub();
	private static SE_SObjectDAStub userDA = new SE_SObjectDAStub();

	@IsTest
	static void doAccountsAndUsersExist_givenAccountsAndUsersExist_shouldReturnTrue() {
		setupMocks();
		//Add data directly to the mocked DA
		accountDA.sobjects.add(new Account());
		userDA.sobjects.add(new User());

		System.assert(new SE_AccountAndUserController().doAccountsAndUsersExist(), 'Should have found at least one account and one user');
	}

	//Set the mocks on the client code, while allowing them to be accessed by our test
	private static void setupMocks() {
		SE_AccountAndUserController.AccountDA = (SE_AccountDA) Test.createStub(SE_AccountDA.class, accountDA);
		SE_AccountAndUserController.UserDA = (SE_UserDA) Test.createStub(SE_UserDA.class, userDA);
	}
}
