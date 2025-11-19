import { LightningElement, api, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';


// export default class YourComponentName extends NavigationMixin(LightningElement) {
//     navigateToRecord(event) {
//         const agreementId = event.currentTarget.dataset.id;
//         alert('Nikhitha----');
//         this[NavigationMixin.Navigate]({
//             type: 'standard__recordPage',
//             attributes: {
//                 recordId: agreementId,
//                 actionName: 'view'
//             }
//         });
//     }
// }

export default class MyLWC extends NavigationMixin(LightningElement) {
    handleNavigateToRecord() {
        this[NavigationMixin.Navigate]({ 
            type: 'standard__recordPage',
            attributes: {
                recordId: agreementId
            }
        });
    }
}


// export default class NavigateToRecord extends NavigationMixin(LightningElement) {

//     @api agreementId;

//     connectedCallback() {
//         this[NavigationMixin.Navigate]({
//             type: 'standard__recordPage',
//             attributes: {
//                 recordId:  this.agreementId,
//                 actionName: 'view'
//             }
//         });
//     }

//     openAccountRecordHandler() {
//     this[NavigationMixin.Navigate]({
//       type: "standard__recordPage",
//       attributes: {
//         objectApiName: "Agreement__c",
//         actionName: "view",
//         recordId: "$recordId"
//       }
//     });
//   }

// }