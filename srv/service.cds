using demo.aggregate as my from '../db/schema';

service MS {

  @odata.draft.enabled
entity table1 as projection on my.table1;
entity LiabilityBasedOnAmount_1 as projection on my.LiabilityBasedOnAmount_1 ;  
  annotate LiabilityBasedOnAmount_1 with @UI.Chart #LiabilityBasedOnAmount_1: {
    
        ChartType          : #Donut,
        Measures           : [chartMeasure],
        MeasureAttributes  : [{
            Measure: chartMeasure,
            Role   : #Axis1
        }],
        Dimensions         : [chartDimension],
        DimensionAttributes: [{
            Dimension: chartDimension,
            Role     : #Category
        }]
    };
// }   
//  annotate demo.aggregate.LiabilityBasedOnAmount_1 with @(
//     UI: {
//         SelectionFields: [id, years,],
//         LineItem #bar : [
//             { Value: id },
//             { Value: years },
//             { Value: chartDimension },
//             { Value: chartMeasure }
//         ],   
//     }
// );



 annotate demo.aggregate.LiabilityBasedOnAmount_1 with @(UI: {
        LineItem #bar : [ 
             {
                 $Type : 'UI.DataField',
                 Label : 'id',
                 Value: id
             },
             {
                 $Type : 'UI.DataField',
                 Label : 'chartDimension',
                 Value: chartDimension,
                 
             },
             {
                 $Type : 'UI.DataField',
                 Label : 'chartMeasure',
                 Value:  chartMeasure
                  },
             
             {
                 $Type : 'UI.DataField',
                 Label : 'years',
                 Value:  years
             },
             // {
             //     $Type : 'UI.DataField',
             //     Label : 'postingDate',
             //     Value: postingDate
             // }
         ],
     });
    }
// service CatalogService {
//     entity Expenses as projection on db.Expenses
//     view ExpensesAnalytics as select from db.ExpensesAnalytics
// }

// annotate CatalogService.ExpensesAnalytics with @(
//     UI: {
//         Chart: {
//             $Type: 'UI.ChartDefinitionType',
//             ChartType: #Donut,
//             Measures: ['amount'],
//             MeasureAttributes: [{
//                 $Type: 'UI.ChartMeasureAttributeType',
//                 Measure: 'amount',
//                 Role: #Axis1
//             }],             
//             Dimensions: ['category'],
//             DimensionAttributes: [{
//                 $Type: 'UI.ChartDimensionAttributeType',
//                 Dimension: 'category',
//                 Role: #Category
//             }]       
//         }
//     }
// );
 annotate demo.aggregate.LiabilityBasedOnAmount_1 with @(
     
 LineItem #bar : [
    {
        $Type : 'com.sap.vocabularies.UI.v1.aggregate',
        IconUrl : web_address,
        Value : years
    }
]
 );
