import { LightningElement } from 'lwc';
import typeAccount from '@salesforce/apex/AccountProvider.typeAccount';
export default class AccountTableData extends LightningElement {
     objAcc={'sObjectType':'Account'};
     accList;
    get typeOptions() {
        return [
            { label: 'Prospect', value: 'Prospect' },
            { label: 'Customer-Direct', value: 'Customer-Direct' },
            { label: 'Other', value: 'Other' }
        ];
    }

    typeHandleChange(event) {
        this.objAcc.Type = event.detail.value;
        typeAccount({objAcc: this.objAcc})
        .then(result => {
            console.log(JSON.stringify(result));
            this.accList = result;
        })
        .catch(error => {
            console.error('Error:', error);
        });

    }
}