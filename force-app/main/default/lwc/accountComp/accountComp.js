import { LightningElement } from 'lwc';
import createNewAccount from '@salesforce/apex/AccountProvider.createNewAccount';

export default class AccountComp extends LightningElement {
    objAcc = { sObjectType: 'Account' };

    get SelectRatingOptions() {
        return [
            { label: 'Hot', value: 'Hot' },
            { label: 'Warm', value: 'Warm' },
            { label: 'Cold', value: 'Cold' }
        ];
    }

    dataHandler(event) {
        this.objAcc.Rating = event.detail.value;
    }

    get SelectSLAOptions() {
        return [
            { label: 'Gold', value: 'Gold' },
            { label: 'Silver', value: 'Silver' },
            { label: 'Bronze', value: 'Bronze' },
            { label: 'Platinum', value: 'Platinum' }
        ];
    }

    slaHandler(event) {
        this.objAcc.SLA__c = event.detail.value;
    }

    handleAccount() {
        this.objAcc.Name =
            this.template.querySelector('lightning-input[data-formfield="Acc"]').value;

        createNewAccount({ accData: this.objAcc })
            .then(result => {
                console.log('Account created successfully:', result);
            })
            .catch(error => {
                console.log('Error creating account:', error);
            });
    }
}