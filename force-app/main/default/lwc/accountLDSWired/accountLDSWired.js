import { LightningElement,wire } from 'lwc';
import getAccountByName from '@salesforce/apex/AccountProvider.getAccountByName';
export default class AccountLDSWired extends LightningElement {
    accountName='John';
    @wire(getAccountByName, { accountName: '$accountName' })accountList;
     get accountData() {
        return this.accountList.data;
    }


}