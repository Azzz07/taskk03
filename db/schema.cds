namespace demo.aggregate;
// using { Currency, cuid } from '@sap/cds/common'; ok
 
// entity Expenses : cuid {
//     category: String @title: 'Category';
//     amount: Decimal(9,2) @title: 'Amount';
//     currency: Currency @title: 'Currency';
//     postingDate: DateTime @title: 'Posting Date'
// }

// @Aggregation.ApplySupported.PropertyRestrictions: true
// view ExpensesAnalytics as select from Expenses {
//   key ID,
//   @Analytics.Dimension: true
//   category,
//   @Analytics.Measure: true
//   @Aggregation.default: #SUM
//   amount,
//   @Analytics.Dimension: true
//   currency
// };

entity LiabilityBasedOnAmount_1 {
    key id             : UUID;
        chartDimension : String
                                @Analytics.Dimension;
        chartMeasure   : Decimal(15, 2)
                                @Analytics.Measure;
        years          : String @Common.FilterDefaultValue: '2023'
                                @Analytics.Dimension
                                @Search.defaultSearchElement;                        
// table : Association to one Tableyears;
}

// @Aggregation.ApplySupported.PropertyRestrictions: true
// view ExpensesAnalytics as select from LiabilityBasedOnAmount_1 {
//   key id,
//   @Analytics.Dimension: true
//   chartMeasure,
//   @Analytics.Measure: true
//   @Aggregation.default: #SUM
//   chartDimension,
//   @Analytics.Dimension: true
//   years
// };


annotate LiabilityBasedOnAmount_1 with @Aggregation.ApplySupported: {
    $Type               : 'Aggregation.ApplySupportedType',
    PropertyRestrictions: true
};


entity table1{
    key id:UUID;
    customerName:String;
    PoNumber:Integer;
    customerNumber:Integer;
    orderDate:Date;
    soNumber:Integer;
    inquiryNumber:Integer;
    totalOrderItems:Integer;
}