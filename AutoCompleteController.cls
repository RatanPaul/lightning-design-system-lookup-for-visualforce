public with sharing class AutoCompleteController {
	
	// Instance fields
	public String searchTerm {get; set;}
	public String selectedAccountId{get; set;}
	public String selectedMovie{get; set;}
    @RemoteAction
    public static List<Account> searchAccounts(String searchTerm) {
        return Database.query('Select Id, Name from Account where name like \'%' + String.escapeSingleQuotes(searchTerm) + '%\'');
    }
	
}