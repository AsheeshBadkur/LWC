import { LightningElement } from 'lwc';
import searchAccounts from '@salesforce/apex/AccountProvider1.searchAccounts';
import getUserName from '@salesforce/apex/AccountProvider1.getUserName';
export default class AccountOwnerCompo extends LightningElement {
 
    objCon = {sObjectType: 'Account'};

    accList;
    columns = [
        { label: 'Name', fieldName: 'Name', type: 'text' },
        { label: 'CreatedBy', fieldName: 'CreatedByName', type: 'text' },
    ];

    connectedCallback(){
        searchAccounts()
        .then(result => {
            this.accList = result;
            this.accList.forEach(acc => {
                acc.CreatedByName = acc.CreatedBy.Name;
            });
            this.totallength = this.accList.length;
        })
        .catch(error => {
            console.error('Error fetching accounts:', error);
        });
        getUserName()
        .then(result => {
            this.userName = result;
        })
        .catch(error => {
            console.error('Error fetching user name:', error);
        });
    }
}
