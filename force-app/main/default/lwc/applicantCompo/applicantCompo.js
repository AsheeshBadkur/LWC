import { LightningElement } from 'lwc';
import createNewApplicant from '@salesforce/apex/ApplicantProvider.createNewApplicant';
export default class ApplicantCompo extends LightningElement {
objApplicant = { sObjectType: 'Applicant__c' };


get SelectRecordTypeOptions(){
    return[
        {
            label: 'Car Loan',
            value: 'Car_Loan'
        },
        {
            label: 'Home Loan',
            value: 'Home_Loan'
        }
    ];
}

recordTypeHandler(event) {
    this.objApplicant.RecordTypeId = event.detail.value;
}


    get SelectGenderOptions(){
        return[
            {
                label: 'Male',
                value: 'male'
            },
            {
                label: 'Female',
                value: 'female'
            },
            {
                label: 'Other',
                value: 'other'
            }
        ];
    }

    genderHandler(event) {
        this.objApplicant.Gender__c = event.detail.value;
    }
    handleApplicant(){
        console.log("Button Clicked");
        this.objApplicant.First_Name__c =this.template.querySelector('lightning-input[data-formfield="First_Name__c"]').value;
        this.objApplicant.Last_Name__c =this.template.querySelector('lightning-input[data-formfield="Last_Name__c"]').value;
        this.objApplicant.Email_ID__c =this.template.querySelector('lightning-input[data-formfield="Email_ID__c"]').value;
        this.objApplicant.DOB__c =this.template.querySelector('lightning-input[data-formfield="DOB__c"]').value;

        createNewApplicant({dataApp:this.objApplicant})
        .then(result=>{
            console.log('Applicant created successfully:', result);
        })
        .catch(error=>{
            console.log('Error creating applicant:', error);
        })
    }
}