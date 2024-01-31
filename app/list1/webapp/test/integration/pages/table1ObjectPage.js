sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'list1',
            componentId: 'table1ObjectPage',
            contextPath: '/table1'
        },
        CustomPageDefinitions
    );
});