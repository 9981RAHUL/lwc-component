import { LightningElement } from 'lwc';

export default class Lwc_myfirstcmd extends LightningElement {
    callme(){
        console.log("call me")
        alert("This is the my myfirst component on vs code");

    }
}