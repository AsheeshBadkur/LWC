import { LightningElement } from 'lwc';

export default class QuickComponent extends LightningElement {
    name;
    email;
    date;
    gender;
    get genderOptions() {
        return [
            { label: 'Male', value: 'male' },
            { label: 'Female', value: 'female' },
            { label: 'Other', value: 'other' }
        ];
    }
    ShowClick(){
        this.name=this.template.querySelector('lightning-input[data-formfield="name"]').value;
        this.email=this.template.querySelector('lightning-input[data-formfield="email"]').value;
        this.date=this.template.querySelector('lightning-input[data-formfield="date"]').value;
        this.gender=this.template.querySelector('lightning-combobox[data-formfield="gender"]').value;
    }

}