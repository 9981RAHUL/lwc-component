import { LightningElement, wire } from 'lwc';
import getconlist from '@salesforce/apex/CreateContactWire.getconlist';
import { updateRecord } from 'lightning/uiRecordApi';
import FIRST_NAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LAST_NAME_FIELD from '@salesforce/schema/Contact.LastName';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import ID_FIELD from '@salesforce/schema/Contact.Id';

const colum = [
    {label:'First Name',fieldName:'FirstName',type:'text',editable:'true'},
    {label:'Last Name',fieldName:'LastName',type:'text',editable:'true'},
    {label:'Phone',fieldName:'Phone',type:'phone',editable:'true'},
    {label:'Email',fieldName:'Email',type:'email',editable:'true'},
    {label:'Id',fieldName:'Id',type:'email',editable:'true'}
]



export default class Lwc_wirelds extends LightningElement {
    draftValues = [];
    col=colum;
    @wire(getconlist) 
    contacts;
   

    handleSave(event){
        console.log("enter in event");
        console.log(event.detail.draftValues[0].FirstName);
        console.log(event.detail.draftValues);
        const fields = {};
        fields[FIRST_NAME_FIELD.fieldApiName]=event.detail.draftValues[0].FirstName;
        fields[LAST_NAME_FIELD.fieldApiName]=event.detail.draftValues[0].LastName;
        fields[ID_FIELD.fieldApiName]=event.detail.draftValues[0].Id;
        fields[PHONE_FIELD.fieldApiName]=event.detail.draftValues[0].Phone;
        fields[EMAIL_FIELD.fieldApiName]=event.detail.draftValues[0].Email;
    console.log(fields);
        const recordData={fields};
        updateRecord(recordData).then().catch();
        console.log(recordData);

       
    }


}