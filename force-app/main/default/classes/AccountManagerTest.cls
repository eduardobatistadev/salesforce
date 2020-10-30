@IsTest
private with sharing class AccountManagerTest {
    @isTest
    static void AccountManagerTest() {
        Id idconta = createidconta();

        RestRequest request = new RestRequest();

        request.requestURI = ''+idconta;

        request.httpMethod = 'GET';

        RestContext.request = request;

        Account thisAccount = AccountManager.getAccount();

        System.assert(thisAccount != null);
        System.assertEquals('Test', thisAccount.Name);

    }
}
