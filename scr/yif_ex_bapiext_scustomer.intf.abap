interface YIF_EX_BAPIEXT_SCUSTOMER
  public .


  methods CREATEFROMDATA_EXIT2
    importing
      value(CUSTOMER_DATA) type BAPISCUNEW
      value(TEST_RUN) type BAPISCUAUX-TESTRUN default SPACE
      value(EXTENSION_IN) type BAPIRETTAB optional
    exporting
      value(RETURN) type BAPIRETTAB .
  methods CREATEFROMDATA_EXIT1
    importing
      value(CUSTOMER_DATA) type BAPISCUNEW
      value(TEST_RUN) type BAPISCUAUX-TESTRUN default SPACE
      value(EXTENSION_IN) type BAPIRETTAB optional
    exporting
      value(RETURN) type BAPIRETTAB .
  methods UPDATE_EMAIL_EXIT3
    importing
      !I_CUSTOMERNUMBER type S_CUSTOMER
      !EXTENSION_IN type BAPIPAREX .
endinterface.
