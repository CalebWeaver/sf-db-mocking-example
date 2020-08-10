@IsTest
public with sharing class IE_UserDAMock implements IE_UserDAI {

	public List<User> users = new List<User>();

	public User getOneUser() {
		return users[0];
	}

	public void insertRecords(List<User> accounts) {
		//Could implement a function to create Ids if your
		//code requires that. An empty method works for many
		//scenarios though
	}
}
