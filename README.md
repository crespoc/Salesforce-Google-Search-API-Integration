# Google Search LWC Integration

This project demonstrates the integration of a Google Search API with Salesforce using a Lightning Web Component (LWC) and an Apex controller. The component allows users to input a search query, fetch results from the Google Search API, and display them dynamically on the Salesforce platform.

## Features

- **Search Bar**: A simple and intuitive input field where users can type their search queries.
- **Search Results**: Displays the results from the Google Search API, including the title, URL, and snippet of each result.
- **Error Handling**: Displays user-friendly error messages if the API call fails or if the input query is empty.

## Components

### Apex Class
- **`GoogleSearchService`**:
  - Handles the HTTP GET callout to the Google Search API using RapidAPI.
  - Processes the response and returns it to the LWC in a structured format.
  - Includes the `@AuraEnabled` annotation to expose the method to the LWC.

### LWC
- **`GoogleSearchLwc`**:
  - Frontend component with a search bar, a button, and a dynamic results display.
  - Uses the Apex class to fetch search results based on user input.
  - Provides real-time feedback for errors and empty queries.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. **Deploy to Salesforce**:
   - Use the Salesforce CLI to deploy the project:
     ```bash
     sfdx force:source:deploy -p force-app/main/default
     ```

3. **Configure API Access**:
   - Replace the placeholder `RAPIDAPI_KEY` in the `GoogleSearchService` Apex class with your RapidAPI key.
   - Ensure the API is enabled and accessible.

4. **Assign Permissions**:
   - Grant access to the `GoogleSearchService` Apex class in Salesforce Setup > Apex Classes > Security.

5. **Test the Component**:
   - Add the LWC to a Lightning App or Record Page.
   - Interact with the search bar and verify the results are displayed.

## Dependencies

- Salesforce CLI
- A valid RapidAPI account and API key for the Google Search API.

## Screenshots

1. **Search Bar**:
   - A simple input field with a search button.

2. **Results Display**:
   - Titles and snippets of search results displayed dynamically.

3. **Error Handling**:
   - Clear messages for invalid queries or failed API calls.

## Future Enhancements

- Add pagination for large result sets.
- Improve UI/UX with additional styling.
- Cache results to minimize API calls.


