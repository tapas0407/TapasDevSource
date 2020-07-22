import { LightningElement,track } from 'lwc';

export default class SimpleCalculator extends LightningElement {
    @track currentResult;
    @track showpreviousResultArray = [];
    @track showPrviousResult = false;

    firstnumber;
    secondnumber;

    numberchanheHandler(event) {
        const number = event.target.name;
        
        if(number==='firstnumber') {
            this.firstnumber = event.target.value;
        } else if(number==='secondnumber') {
            this.secondnumber = event.target.value;
        }
    }

        addHandler(){
            const firstN = parseInt(this.firstnumber);
            const secondN = parseInt(this.secondnumber);

            this.currentResult = 'Result of'+firstN+ '+' +secondN +'is'+(firstN+secondN);
            this.showpreviousResultArray.push(this.currentResult);

        }
        subHandler(){
            const firstN = parseInt(this.firstnumber);
            const secondN = parseInt(this.secondnumber);

            this.currentResult = 'Result of'+firstN+ '-' +secondN +'is'+(firstN-secondN);
            this.showpreviousResultArray.push(this.currentResult);
        }

        showPreviousResultToggle() {
            this.showPrviousResult = event.target.checked;

        }
    
}