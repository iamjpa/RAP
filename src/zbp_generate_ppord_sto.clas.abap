CLASS zbp_generate_ppord_sto DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_generate_ppord_sto IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: it_pporders TYPE TABLE of zpp_orders_tbl,
          it_sto      TYPE TABLE of zpp_sto_tbl.

          it_pporders = VALUE #(
          ( aufnr = '000001000000' matnr = '71' gamng = '10' gmein = 'KG' gstrp = '20221001' gltrp = '20221020' )
          ( aufnr = '000001000001' matnr = '72' gamng = '20' gmein = 'KG' gstrp = '20221001' gltrp = '20221020' )
          ( aufnr = '000001000002' matnr = '73' gamng = '10' gmein = 'KG' gstrp = '20221101' gltrp = '20221115' )
          ( aufnr = '000001000003' matnr = '74' gamng = '40' gmein = 'KG' gstrp = '20221201' gltrp = '20221230' )
          ( aufnr = '000001000004' matnr = '75' gamng = '30' gmein = 'KG' gstrp = '20221210' gltrp = '20221230' )
           ).
        delete from zpp_orders_tbl.

        INSERT zpp_orders_tbl from TABLE @it_pporders.

        SELECT * FROM zpp_orders_tbl INTO TABLE @it_pporders.
        out->write( sy-dbcnt ).
        out->write( 'data inserted successfully!' ).

           it_sto = VALUE #(
          ( ebeln = '4500000130' matnr = '71' menge = '10' meins = 'KG' eeind = '20221001' splant = '1000' rplant = '2000')
          ( ebeln = '4500000131' matnr = '72' menge = '10' meins = 'KG' eeind = '20221101' splant = '1000' rplant = '2000')
          ( ebeln = '4500000132' matnr = '73' menge = '10' meins = 'KG' eeind = '20221115' splant = '1000' rplant = '2000')
          ( ebeln = '4500000133' matnr = '74' menge = '10' meins = 'KG' eeind = '20221220' splant = '1000' rplant = '2000')
          ( ebeln = '4500000134' matnr = '75' menge = '10' meins = 'KG' eeind = '20221220' splant = '1000' rplant = '2000')
           ).
        delete from zpp_sto_tbl.

        INSERT zpp_sto_tbl from TABLE @it_sto.

        SELECT * FROM zpp_sto_tbl INTO TABLE @it_sto.
        out->write( sy-dbcnt ).
        out->write( 'data inserted successfully!' ).



  ENDMETHOD.

ENDCLASS.
