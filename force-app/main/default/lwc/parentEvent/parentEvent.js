import { LightningElement, track } from 'lwc';

export default class ParentEvent extends LightningElement {
    @track msg;
    handleCustomEvent(event) {
        const text = event.detail;
        this.msg = text;

    }
}