@RestResource(urlMapping='/Account/*')
global with sharing class AccountManager {
    
    @HttpGet
    global static Account getAccount(){
        
        RestRequest request = RestContext.request;

        String AccountId = request.requestURI.substring(
            request.requestURI.lastIndexOf('/')+1);

            Account conta = [SELECT Id, Name, Contacts FROM Account WHERE id= :AccountId];
            
            return conta;
            
        // fazer um metodo chamado getAccount.
        // o metodo deve esta anotado com @HttpGet e retornar um objeto conta.
        // o metodo deve retornar Id e name para o registro solicitado e todos 
             // os contatos associados com seu Id e name
        // criar teste unitarios
    }
}
