public with sharing class IE_AccountDA implements IE_AccountDAI {

	public Account getOneAccount() {

		List<Account> accounts = [SELECT Id FROM Account LIMIT 1];
		if (!accounts.isEmpty()) {
			return accounts[0];
		}

		return null;
	}

	public void insertRecords(List<Account> accounts) {
		insert accounts;
	}
}
