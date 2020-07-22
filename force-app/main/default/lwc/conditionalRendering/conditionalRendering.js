import { LightningElement,track } from 'lwc';

export default class ConditionalRendering extends LightningElement {
    @track displayDiv = false;
    @track cityList = ['Kolkata','Bengaluru','Hyderabad'];

    showDivHandler(event){
        this.displayDiv=event.target.checked;
    }


}