import { LightningElement } from 'lwc';
import searchContacts from '@salesforce/apex/ContactProvider.searchContacts';
export default class ContactCompo extends LightningElement {
    objCon = {sObjectType: 'Contact'};

    conList ;
    columns = [
        { label: 'Name', fieldName: 'Name', type: 'text' },
        { label: 'Email', fieldName: 'Email', type: 'email' },
        { label: 'Phone', fieldName: 'Phone', type: 'phone' }
    ];

    connectedCallback(){
        searchContacts()
        .then(result => {
            this.conList = result;
        })
        .catch(error => {
            console.error('Error fetching contacts:', error);
        });
    }
}