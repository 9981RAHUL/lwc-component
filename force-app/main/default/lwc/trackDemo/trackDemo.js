import { LightningElement } from 'lwc';

export default class TrackDemo extends LightningElement {
    Name= {
           
    };
    KeyHandle(event){
             this.Name = event.target.value;
    }
}