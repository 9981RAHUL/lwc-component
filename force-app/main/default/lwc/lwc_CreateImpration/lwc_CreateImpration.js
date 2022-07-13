import { LightningElement } from 'lwc';
import { creageReacord, createRecord } from 'lightning/uiRecordApi';
//import Account from '@salesforce/schema/Case.Account';
export default class Lwc_CreateImpration extends LightningElement {
    name;
    Phone;
    Fax;
    Industry;
    
    callNm(event){
        this.Name=event.target.value

    }
    callPn(event){
        this.Phone=event.target.value
    }
    callFx(event){
        this.Fax=event.target.value
    }
    callIn(event){
        this.Industry=event.target.value
    }
    callSave(event){
        //step 1 : create list field in json formate
        const fields = {'Name':this.Name,'Phone':this.Phone,'Fax':this.Fax,'Industry':this.Industry};
        //step 2 : create api recod with field
        const recordData = {apiName:'Account',fields};
        //step 3 : call impration 
        createRecord(recordData).then(response=>{
            alert('Account is created succsessfully'+ response.id);
        }).catch(error=>{
            alert('Record creation if faild'+ error.body.message);
        });

    }
}