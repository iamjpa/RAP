@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for ZPP_STO_TBL'
@Metadata.allowExtensions: true
define root view entity ZPP_STO as select from zpp_sto_tbl
{
    key ebeln  as STO_Num,
   matnr as  Material_Num,
  @Semantics.quantity.unitOfMeasure : 'UoM'
  menge      as Quantity,
  meins      as  UoM,
  eeind      as Requirement_Date,
  splant     as Supplying_Plant,
  rplant     as Receiving_Plant
}
