public class ContractPDFController {
    public Contract contract { get; set; } // Variável para armazenar o contrato relacionado

    public ContractPDFController(ApexPages.StandardController controller) {

        Id oppId = controller.getId();

        Opportunity opp = [SELECT Id, AccountId, ContractId FROM Opportunity WHERE Id = :oppId];

        if (opp.ContractId != null) {

            contract = [SELECT Id, ContractNumber, Valor_de_Desconto__c, Valor_Total__c, Valor_Total_com_Desconto__c, Account.Name, Account.Email__c, Account.Phone, StartDate, EndDate, Status, Account.BillingCity, Description, Pricebook2Id
                        FROM Contract WHERE Id = :opp.ContractId];
        } else {

            List<Contract> contracts = [SELECT Id, ContractNumber, Valor_de_Desconto__c, Valor_Total__c, Valor_Total_com_Desconto__c, Account.Name, Account.Email__c, StartDate, Account.Phone, EndDate, Status, Account.BillingCity, Description, Pricebook2Id
                                        FROM Contract WHERE AccountId = :opp.AccountId LIMIT 1];
            if (!contracts.isEmpty()) {
                contract = contracts[0]; 
            } else {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Nenhum Contrato relacionado à Oportunidade ou Conta.'));
            }
        }
    }
}