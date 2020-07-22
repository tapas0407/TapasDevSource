import { LightningElement,track,api } from 'lwc';

export default class PublicMethodChild extends LightningElement {
    debugger;
    @track value = ['Red'];

    options = [
        { label: 'Red Marker', value: 'Red' },
        { label: 'Blue Marker', value: 'Blue' },
        { label: 'Green Marker', value: 'Green' }
        ];

    @api
    selectCheckbox(checkboxValue){
        this.options.find(checkbox => {
            return checkboxValue === checkbox.value;
            
        })

        if(selectCheckbox){
            this.value = selectCheckbox.value;
            return "successfully checked";
        } 
        return"No checkbox found";
        
    }


}