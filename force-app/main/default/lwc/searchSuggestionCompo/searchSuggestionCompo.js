import { LightningElement } from 'lwc';
import searchSuggestion from '@salesforce/apex/ApplicantProvider.searchSuggestion';

export default class SearchSuggestionCompo extends LightningElement {
objApp={sObjectType:'Applicant__c'};
appList;
onkeyUp=false;
searchSuggestion(){
    this.objApp.First_Name__c = this.template.querySelector('lightning-input[data-formfield="searchApplicant"]').value;
    searchSuggestion({searchKey: this.objApp.First_Name__c})
    .then(result=>{
        this.appList = result;
        this.onkeyUp=true;
    })
    .catch(error=>{
        console.error(error);
    });
}
}