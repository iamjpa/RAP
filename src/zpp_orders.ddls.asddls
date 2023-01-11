@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for ZPP_ORDERS_TBL'
@Metadata.allowExtensions: true
define root view entity zpp_orders as select from zpp_orders_tbl
 {
    
      key aufnr as Order_Num,
         matnr  as Material_Num,
          @Semantics.quantity.unitOfMeasure : 'UoM'
          gamng as Quantity,
          gmein as UoM,
          gstrp as Order_Start_Date,
          gltrp as Order_Finish_Date
}
