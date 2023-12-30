/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// Load the Google Client Library
gapi.load('client', start);

// Initialize the Google Client Library
function start() {
    gapi.client.init({
        'apiKey': 'AIzaSyALzAWqs-FHak9Oa7tmBOtQu5IdWMBBY1s',
        'discoveryDocs': ['https://sheets.googleapis.com/$discovery/rest?version=v4'],
    }).then(function() {
        // Call the Google Sheets API
        return gapi.client.sheets.spreadsheets.values.get({
            'spreadsheetId': '1QUyK_bVz-uEU0nYWIZqKdQU-HZDciSFRNZP1h7zEAz8',
            'range': 'Sheet1!B2:D',
        });
    }).then(function(response) {
        var range = response.result;
        if (range.values.length > 0) {
            for (i = 0; i < range.values.length; i++) {
                var row = range.values[i];
                // Append a new row to the table
                var tr = document.createElement('tr');
                for (var j = 0; j < row.length; j++) {
                    var td = document.createElement('td');
                    td.innerText = row[j];
                    tr.appendChild(td);
                }
                document.getElementById('feedbackTable').appendChild(tr);
            }
        } else {
            console.log('No data found.');
        }
    }, function(response) {
        console.error('Error: ' + response.result.error.message);
    });
}