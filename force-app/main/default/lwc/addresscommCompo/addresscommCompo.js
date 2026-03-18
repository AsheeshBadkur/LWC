import { LightningElement,api } from 'lwc';

export default class AddresscommCompo extends LightningElement {

    @api addressData;
    columns = [
        { label: 'Address Line 1', fieldName: 'Address_Line_1__c', type: 'text' },
        { label: 'Address Line 2', fieldName: 'Address_Line_2__c', type: 'text' },
        { label: 'State', fieldName: 'State__c', type: 'text' },
    ];
}