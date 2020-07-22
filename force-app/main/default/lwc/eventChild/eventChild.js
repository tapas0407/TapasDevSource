import { LightningElement } from 'lwc';

export default class EventChild extends LightningElement {
    handleChnage(event) {
        event.preventDefault();
        const name = event.target.value;
        const selectEvent = new CustomEvent('mycustomevemt',{
            detail: name
        });
        this.dispatchEvent(selectEvent);
    }
}