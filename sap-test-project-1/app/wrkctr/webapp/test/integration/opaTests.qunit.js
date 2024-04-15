sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'wrkctr/test/integration/FirstJourney',
		'wrkctr/test/integration/pages/WorkCenterMainObjectPage'
    ],
    function(JourneyRunner, opaJourney, WorkCenterMainObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('wrkctr') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheWorkCenterMainObjectPage: WorkCenterMainObjectPage
                }
            },
            opaJourney.run
        );
    }
);