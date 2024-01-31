sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'list',
            componentId: 'LiabilityBasedOnAmount_1List',
            contextPath: '/LiabilityBasedOnAmount_1'
        },
        CustomPageDefinitions
    );
});