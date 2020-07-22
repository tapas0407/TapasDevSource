import { LightningElement, track } from 'lwc';

export default class BmiCalculator extends LightningElement {
    cardTitle = "Welcome to Lightning Web";


    height;
    weight;

    @track BMI

    onheightChange(event){
        this.height= parseFloat(event.target.value);
    }

    onweightChange(event){
        this.weight= parseFloat(event.target.value);

    }
    calculateBMI() {
        try{
            this.BMI= this.weight/(this.height*this.height);
        }
        catch(error){
            BMI=undefined;
        }
        
    }
}