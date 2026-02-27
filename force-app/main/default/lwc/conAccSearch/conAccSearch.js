import { LightningElement } from 'lwc';
import searchAccountId from '@salesforce/apex/AccountProvider.searchAccountId';
export default class ConAccSearch extends LightningElement {

   accList;
   columns=[
       { label:'Id', fieldName:'Id', type:'text'},
       {label:'Name',fieldName:'Name',type:'text'},
       {label:'Phone',fieldName:'Phone',type:'Phone'},
       {label:'Level__c',fieldName:'Level__c',type:'text'},
       {label:'Fax',fieldName:'Fax',type:'text'}
   ];
   onClickSearch=false;
   objAcc={sObjectType:'Account'};
    searchAccount(){
        this.objAcc.Name=this.template.querySelector('lightning-input[data-formfield="Name"]').value;
        searchAccountId({accountId:this.objAcc})
        .then(result=>{
            this.accList=result;
            this.onClickSearch=true;
        })
        .catch(error=>{
            console.error(error);
        }); 
    }
}