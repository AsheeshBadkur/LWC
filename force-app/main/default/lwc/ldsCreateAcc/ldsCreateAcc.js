import { LightningElement, api } from 'lwc';
import { CloseActionScreenEvent } from 'lightning/actions';
import Toast from 'lightning/toast';

export default class LdsCreateAcc extends LightningElement {

    @api recordId;

    handleSuccess(event) {

     
        Toast.show({
            label: 'Success',
            message: 'Account Created Successfully',
            variant: 'success'
        });

        
        this.dispatchEvent(new CloseActionScreenEvent());
    }
}
