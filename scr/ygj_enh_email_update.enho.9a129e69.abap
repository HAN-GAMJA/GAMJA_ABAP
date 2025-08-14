"Name: \FU:BAPI_FLCUST_CREATEFROMDATA\SE:END\EI
ENHANCEMENT 0 YGJ_ENH_EMAIL_UPDATE.
  DATA
    ro_baid     TYPE REF TO yif_ex_bapiext_scustomer.

  COMMIT WORK.

  CALL METHOD cl_exithandler=>get_instance
    EXPORTING
      exit_name              = 'YBAPIEXT_SCUSTOMER'
      null_instance_accepted = 'X'
    CHANGING
      instance               = ro_baid.

  IF ro_baid IS NOT INITIAL.
    CALL METHOD ro_baid->update_email_exit3
      EXPORTING
        I_CUSTOMERNUMBER = CUSTOMERNUMBER
        extension_in     = extension_in.
  ENDIF.

ENDENHANCEMENT.
