import { LightningElement, api, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
//import { getRecord } from 'lightning/uiRecordApi';
//import AGREEMENT_FIELD from '@salesforce/schema/Statement__c.Agreement_Name__c'; // Make sure this is the correct API name

export default class YourComponentName extends NavigationMixin(LightningElement) {
    // Your component's code goes here
    navigateToRecord(event) {
        const recordId = event.currentTarget.dataset.id;
        alert('Nikhitha----');
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: agreementId,
                actionName: 'view'
            }
        });
    }
}
// export default class RedirectExample extends NavigationMixin(LightningElement) {
//     @api recordId; // Statement record ID

//     // Wire the getRecord to retrieve the Agreement_Name__c field from the Statement record
//     @wire(getRecord, { recordId: '$recordId', fields: [AGREEMENT_FIELD] })
//     statement;

//     // Function to handle redirection to the Agreement record page
//     navigateToAgreement(recordId) {
//         this[NavigationMixin.Navigate]({
//             type: 'standard__recordPage',
//             attributes: {
//                 recordId: recordId,           // Pass the ID of the Agreement record
//                 objectApiName: 'Agreement__c', // API name of the object (Agreement)
//                 actionName: 'view'            // Action to view the record
//             }
//         });
//     }

//     // Automatically called when the component is inserted into the DOM
//     connectedCallback() {
//         // Check if the statement record is available and contains the Agreement_Name__c field
//         if (this.statement.data) {
//             const agreementId = this.statement.data.fields.Agreement_Name__c.value;
//             if (agreementId) {
//                 // Redirect to the Agreement record page
//                 this.navigateToAgreement(agreementId);
//             }
//         }
//     }
// }