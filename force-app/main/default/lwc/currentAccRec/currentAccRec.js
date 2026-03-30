import { LightningElement ,api} from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
import SLA_FIELD from '@salesforce/schema/Account.SLA__c';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';

export default class CurrentAccRec extends LightningElement {
    nameField = NAME_FIELD;
    ratingField = RATING_FIELD;
    slaField = SLA_FIELD;
    phoneField = PHONE_FIELD;

    @api recordId;
    @api objectApiName='Account';
}