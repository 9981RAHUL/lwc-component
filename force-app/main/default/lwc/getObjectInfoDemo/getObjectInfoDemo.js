import { LightningElement, wire} from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account'
export default class GetObjectInfoDemo extends LightningElement {
    @wire(getObjectInfo, {objectApiName : ACCOUNT_OBJECT})
    getObjectInfo({data, error}){
        if(data){
            console.log(data)
        }
        if(error){
            console.log(error)
        }
    }
}