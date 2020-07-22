import { LightningElement } from 'lwc';

export default class ParentMessage extends LightningElement {
    handleChange(event) {
        this.template.querySelector('c-child-event').changeMessage(event.target.value);

    }
}