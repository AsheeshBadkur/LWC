import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ContactActivity extends LightningElement {

    @api recordId;

    handleSuccess() {
        this.dispatchEvent(
            new ShowToastEvent({
                title: 'Success',
                message: 'Contact Updated Successfully',
                variant: 'success'
            })
        );
    }
}