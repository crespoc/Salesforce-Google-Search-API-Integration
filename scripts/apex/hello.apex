// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

try {
    // Realiza la búsqueda utilizando la clase
    Map<String, Object> response = GoogleSearchService.search('Adidas', 10, true);
    
    // Imprime el resultado en el log
    System.debug('Response: ' + response);
} catch (Exception e) {
    // Manejo de errores
    System.debug('Error: ' + e.getMessage());
}
