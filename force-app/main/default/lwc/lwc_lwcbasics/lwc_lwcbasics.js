import { LightningElement } from 'lwc';

export default class Lwc_lwcbasics extends LightningElement {
    name='Rahul Jaiswal';
    callme(){

        this.name='Aavnya jaiswal';
        console.log("call me")
        this.name='sourbh jaiswal';

    }
    listenme(event){

        this.name=event.target.value
    }
    
}