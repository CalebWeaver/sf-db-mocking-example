@IsTest
public with sharing class IE_AccountDAMock implements IE_AccountDAI {

	public List<Account> accounts = new List<Account>();

	public Account getOneAccount() {
		return accounts[0];
	}

	public void insertRecords(List<Account> accounts) {
		//Could implement a function to create Ids if your
		//code requires that. An empty method works for many
		//scenarios though
	}
}