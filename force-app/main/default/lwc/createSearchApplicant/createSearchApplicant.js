import { LightningElement } from 'lwc';
import searchApplicant from '@salesforce/apex/ApplicantProvider.searchApplicant';
export default class CreateSearchApplicant extends LightningElement {
    objApp={sObjectType:'Applicant__c'};

    searchAppHandler(){
        console.log('you are in js');
        this.objApp.Name = this.template.querySelector('[data-formfield="App"]').value;

        searchApplicant({objAppSearch:this.objApp.Name})
        .then(result=>{
            this.objApp = result;
        })
        .catch(error=>{
            console.log(error);
        })
    }
}
