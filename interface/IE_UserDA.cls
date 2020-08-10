public with sharing class IE_UserDA implements IE_UserDAI {

	public User getOneUser() {

		List<User> users = [SELECT Id FROM User LIMIT 1];
		if (!users.isEmpty()) {
			return users[0];
		}

		return null;
	}

	public void insertRecords(List<User> users) {
		insert users;
	}
}
