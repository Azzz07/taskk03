sap.ui.define([
    "sap/ui/test/opaQunit"
], function (opaTest) {
    "use strict";

    var Journey = {
        run: function() {
            QUnit.module("First journey");

            opaTest("Start application", function (Given, When, Then) {
                Given.iStartMyApp();

                Then.onTheLiabilityBasedOnAmount_1List.iSeeThisPage();

            });


            opaTest("Navigate to ObjectPage", function (Given, When, Then) {
                // Note: this test will fail if the ListReport page doesn't show any data
                
                When.onTheLiabilityBasedOnAmount_1List.onFilterBar().iExecuteSearch();
                
                Then.onTheLiabilityBasedOnAmount_1List.onTable().iCheckRows();

                When.onTheLiabilityBasedOnAmount_1List.onTable().iPressRow(0);
                Then.onTheLiabilityBasedOnAmount_1ObjectPage.iSeeThisPage();

            });

            opaTest("Teardown", function (Given, When, Then) { 
                // Cleanup
                Given.iTearDownMyApp();
            });
        }
    }

    return Journey;
});