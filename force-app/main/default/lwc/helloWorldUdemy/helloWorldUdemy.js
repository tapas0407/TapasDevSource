import { LightningElement,track } from 'lwc';

export default class HelloWorldUdemy extends LightningElement {
    @track dynamicGreeting='World123';

    greetingchangeHandler(event) {
        this.dynamicGreeting= event.target.value;

    }
}