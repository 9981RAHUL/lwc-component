import { LightningElement, api} from 'lwc';

export default class Lwc_recordEditform extends LightningElement {
    @api recordId;

    reloadme(event){
        const inputfields = this.template.querySelectorAll('lightning-input-field');
        inputfields.forEach(field => {field.reset();});
            
       
    }
}