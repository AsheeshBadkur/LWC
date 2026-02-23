import { LightningElement, track } from 'lwc';
import getAllApplicants from '@salesforce/apex/ApplicantProvider.getAllApplicants';

export default class ApplicantTableCompo extends LightningElement {
    fromDate;
    toDate;
    showTable = false;
    showSpinner = false;

    handleFromDateChange(event) {
        this.fromDate = event.target.value;
    }

    handleToDateChange(event) {
        this.toDate = event.target.value;
        this.showSpinner = true;

        getAllApplicants({  fromDate: this.fromDate,  toDate: this.toDate  })
            .then(result => {
                console.log(result);
                this.appList = result;
                this.showTable = true;
                this.showSpinner = false;
            })
        .catch(error => {
            console.error(error);
            this.showSpinner = false;
        });
    }

    }
