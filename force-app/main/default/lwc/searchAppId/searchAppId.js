import { LightningElement } from 'lwc';
import searchApplicantId from '@salesforce/apex/ApplicantProvider.searchApplicantId';
export default class SearchAppId extends LightningElement {
    objApp = {sObjectType: 'Applicant__c'};
    appList;
  onClickSearch=false;
    columns = [
        { label: 'Address Line 1', fieldName: 'Address_Line_1__c' },
        { label: 'Address Line 2', fieldName: 'Address_Line_2__c' },
        { label: 'City', fieldName: 'City__c' },
        { label: 'State', fieldName: 'State__c' }
    ];

    searchApplicant(){
        this.objApp.Name = this.template.querySelector('[data-formfield="Name"]').value;
        searchApplicantId({ applicantId: this.objApp.Name })
            .then(result => {
                console.log(result);
                this.appList=result;
                this.onClickSearch=true;
            })
            .catch(error => {
                console.log(error);
            });
    }
}