import { LightningElement } from 'lwc';
import searchApplicantId from '@salesforce/apex/ApplicantProvider.searchApplicantId';

export default class ApplicantcommCompo extends LightningElement {
    showPopup=false;
    objApplicant = {sObjectType:'Applicant__c'};
     app;
    
    applicantHandler(){
        this.showPopup=true;
        this.objApplicant.Name = this.template.querySelector("lightning-input[data-formfield='applicantId']").value;
        searchApplicantId({ applicantId: this.objApplicant.Name })
            .then(result => {
                console.log(result);
                this.app=result;
            })       
            .catch(error => {
                console.log(error);
            });
        

}
close(event){
    this.showPopup=event.detail;
}
}