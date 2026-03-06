import { LightningElement } from 'lwc';
import searchSuggestion from '@salesforce/apex/ApplicantProvider.searchSuggestion';

export default class SearchSuggestionCompo extends LightningElement {
objApp={sObjectType:'Applicant__c'};
appList;

columns = [
    { label: 'Applicant Id', fieldName: 'Name' },
    { label: 'First Name', fieldName: 'First_Name__c'},

];

searchSuggestion(event){
    this.objApp.First_Name__c = event.target.value;
    searchSuggestion({searchKey: this.objApp.First_Name__c})
    .then(result=>{
        this.appList = result;
       
    })
    .catch(error=>{
        console.error(error);
    });
}
}