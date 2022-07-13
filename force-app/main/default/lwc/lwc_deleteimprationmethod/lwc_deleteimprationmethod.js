import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class Lwc_deleteimprationmethod extends LightningElement {

    @api recordId;

    calldelet(event){
         deleteRecord(this.recordId).then(response=>{
            this[NavigationMixin.Navigate]({
                type: 'standard__objectPage',
                attributes: {
                    objectApiName:'Account',
                    actionName : 'home',

                },
            });
        }).catch();
    }
}