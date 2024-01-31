sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'list/test/integration/FirstJourney',
		'list/test/integration/pages/LiabilityBasedOnAmount_1List',
		'list/test/integration/pages/LiabilityBasedOnAmount_1ObjectPage'
    ],
    function(JourneyRunner, opaJourney, LiabilityBasedOnAmount_1List, LiabilityBasedOnAmount_1ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('list') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheLiabilityBasedOnAmount_1List: LiabilityBasedOnAmount_1List,
					onTheLiabilityBasedOnAmount_1ObjectPage: LiabilityBasedOnAmount_1ObjectPage
                }
            },
            opaJourney.run
        );
    }
);