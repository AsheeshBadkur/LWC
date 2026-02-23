import { LightningElement } from 'lwc';
import createNewAccount from '@salesforce/apex/AccountProvider.createNewAccount';
import searchAccount from '@salesforce/apex/AccountProvider.searchAccount';
import deleteAccount from '@salesforce/apex/AccountProvider.deleteAccount';
import updateAccount from '@salesforce/apex/AccountProvider.updateAccount';
import { ShowToastEvent } from 'lightning/platformShowToastEvent' ;


export default class CrudCompo extends LightningElement {
objAcc={sObjectType:'Account'};
createhandlertap=false;
showSpinner=false;
searchandlertap=false;
onsearchAccHandler=false;
editEnabled=true;
searchEnabled=false;
deleteEnabled=false;

//create
showSuccessToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Saved...!!!',
    variant: 'success',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}
showErrorToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Not Saved...!!!',
    variant: 'error',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}

//search
searchSuccessToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Found..!!',
    variant: 'info',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}
searchErrorToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Not Found...!!!',
    variant: 'error',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}
//delete
deleteToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Deleted Successfully..!!',
    variant: 'Success',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}
deleteErrorToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Not Deleted...!!!',
    variant: 'error',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}
//edit
editToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Edited ..!!',
    variant: 'Success',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}
editErrorToast() {
const evt = new ShowToastEvent({
    title: 'Message',
    message: 'Record Not Edited...!!!',
    variant: 'error',
    mode: 'dismissable'
});
this.dispatchEvent(evt);
}


//Handler button

createHandler(){
this.createhandlertap=true;
this.searchandlertap=false;
this.editEnabled=true;
this.searchEnabled=false;
this.deleteEnabled=false;
}
searchHandler(){
this.createhandlertap=false;
this.searchandlertap=true;
this.editEnabled=true;
this.searchEnabled=true;
this.deleteEnabled=false;
}
editHandler(){
this.createhandlertap=false;
this.searchandlertap=true;
this.editEnabled=false;
this.searchEnabled=false;
this.deleteEnabled=false;

}
deleteHandler(){
this.createhandlertap=false;
this.searchandlertap=true;
this.editEnabled=true;
this.searchEnabled=false;
this.deleteEnabled=true;


}


//Create Account Code Start
get SelectRatingOptions(){
return [
    { label: 'Hot', value: 'Hot' },
    { label: 'Cold', value: 'Cold' },
    { label: 'Warm', value: 'Warm' }
];
}
dataHandler( event ){
this.objAcc.Rating=event.target.value;
}
get SelectSLAOptions(){
return [
    { label: 'Gold', value: 'Gold' },
    { label: 'Silver', value: 'Silver' },
    { label: 'Platinum', value: 'Platinum' },
    { label: 'Bronze', value: 'Bronze' }
];
}
slaHandler( event ){
this.objAcc.SLA__c=event.target.value;
}

nameHandler(event){
    this.objAcc.Name = event.target.value;
}

handleAccount(){
this.showSpinner=true;
this.objAcc.Name=this.template.querySelector('lightning-input[data-formfield="Acc"]').value;
createNewAccount({ accData: this.objAcc })
.then(result=>{
    this.objAcc = { sObjectType: 'Account' };
    this.showSuccessToast(result);
    this.showSpinner=false;
    this.createhandlertap=false;
})
.catch(error=>{
    console.error('Error:', error);
    this.showErrorToast(error);
    this.showSpinner=false;
});
}

//create Account Code End


//search Account Code 

searchAccHandler(){
this.showSpinner=true;
this.objAcc.Name = this.template.querySelector('[data-formfield="Acc"]').value;
searchAccount({objAccSearch:this.objAcc.Name})
.then(result=>{
    
    this.objAcc = result;
    this.onsearchAccHandler=true;
    this.searchSuccessToast(result);
    this.showSpinner=false;
    
    
})
.catch(error=>{
    this.searchErrorToast(error);
    console.log(error);
    this.showSpinner=false;
    
});
}
//Search code end

//delete Code
onclickDelete() {
this.deleteEnabled = true;
let text = confirm("Are you sure you want to delete this record?");

if (text) {
    this.showSpinner = true;
    deleteAccount({ delAcc: this.objAcc })
    .then(result=>{
        this.deleteToast(result);
        this.showSpinner = false;
        this.onsearchAccHandler = false;
    })
    .catch(error=>{
        this.deleteErrorToast(error);
        this.showSpinner = false;
    });
}
}
//end delete code

//edit code
onclickEdit() {
this.editEnabled = false;
this.searchEnabled = false;
this.deleteEnabled = false;
this.showSpinner = true;
updateAccount({ accData: this.objAcc })
.then(result=>{
    this.objAcc = result;
    this.editToast(result);
    this.showSpinner = false;
    
})
.catch(error=>{
    this.editErrorToast(error);
    this.showSpinner = false;
});
}
}