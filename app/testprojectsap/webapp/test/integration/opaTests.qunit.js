sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'testprojectsap/test/integration/FirstJourney',
		'testprojectsap/test/integration/pages/Interactions_HeaderObjectPage',
		'testprojectsap/test/integration/pages/Interactions_ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, Interactions_HeaderObjectPage, Interactions_ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('testprojectsap') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheInteractions_HeaderObjectPage: Interactions_HeaderObjectPage,
					onTheInteractions_ItemsObjectPage: Interactions_ItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);