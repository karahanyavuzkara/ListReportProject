sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'my/books/fiorilistapp/test/integration/FirstJourney',
		'my/books/fiorilistapp/test/integration/pages/BooksList',
		'my/books/fiorilistapp/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('my/books/fiorilistapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);