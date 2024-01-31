sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'aaaa1/test/integration/FirstJourney',
		'aaaa1/test/integration/pages/LiabilityBasedOnAmount_1Main'
    ],
    function(JourneyRunner, opaJourney, LiabilityBasedOnAmount_1Main) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('aaaa1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheLiabilityBasedOnAmount_1Main: LiabilityBasedOnAmount_1Main
                }
            },
            opaJourney.run
        );
    }
);