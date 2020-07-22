import { LightningElement,track } from 'lwc';

export default class PublicMethodParent extends LightningElement {
    @track value;
    checkboxSelectHandler(){
        const childComponent= this.template.querySelector('c-public-method-child');
        const returnValue= childComponent.selectCheckbox(this.value);
        console.log('return',returnValue);
        
    }
    onChangeHandler(event) {
        this.value = event.taget.value;

    }
}