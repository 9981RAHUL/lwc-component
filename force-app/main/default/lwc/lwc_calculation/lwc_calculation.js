import { LightningElement, track } from 'lwc';

export default class Lwc_calculation extends LightningElement {
@track num1;
@track num2;
@track num3;
Result;

firstnumber(event){

    this.num1=event.target.value;

}
secondnumber(event){

    this.num2=event.target.value;
}
thirdnumber(event){

    this.num3=event.target.value;
}
calulatenumber(event){
    const a=parseInt(this.num1);
    const b=parseInt(this.num2);
    const c=parseInt(this.num3);

    if(a>b && a>c){
        alert("a is the greter number"+a);
    }
    if(b>a && b>c){
        alert("b is the greter number"+b);
    }
    if(c>a && c>b){
        alert("c is the greter number"+c);
    }


}
captureData(event){
    const wh= event.target.name;
         if(wh=='aval'){

        this.num1= event.target.value;
        }
         else if(wh=='bval'){
        this.num2= event.target.value;
             }
         else if(wh=='cval'){
         this.num3= event.target.value;
        }
    }

    clearme(event){
        alert('I am in clearme');
        this.num1='';
        this.num2='';
        this.num3='';
    
    
    }
    
}