import { LightningElement, track } from 'lwc';
import searchGoogle from '@salesforce/apex/GoogleSearchService.search';

export default class GoogleSearchLwc extends LightningElement {

    @track query = '';
    @track results = [];
    @track error;

    handleInputChange(event) {
        this.query = event.target.value;
    }

    handleSearch() {
        if(!this.query) {
            this.error = 'Please enter a search query';
            this.results = [];
            return;
        }

        this.error = null; // reset error before calling the API

        searchGoogle({ query: this.query, resultLimit: 10, includeRelatedKeywords: true })
            .then(data => {
                this.results = data.results || [];
                this.error = null; //clear error on success
            })
            .catch(err => {
                this.error = 'an error ocurred while fetching the results';
                console.error(err);
                this.results = [];
            });

    }

    get hasResults() {
        return this.results && this.results.length > 0;
    }

}