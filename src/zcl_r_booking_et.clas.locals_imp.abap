CLASS lhc_Booking DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Booking RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Booking RESULT result.

    METHODS CalculateTotalPrice FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Booking~CalculateTotalPrice.

    METHODS setBokkingDate FOR DETERMINE ON SAVE
      IMPORTING keys FOR Booking~setBokkingDate.

    METHODS setBokkingNumber FOR DETERMINE ON SAVE
      IMPORTING keys FOR Booking~setBokkingNumber.

    METHODS validateConnection FOR VALIDATE ON SAVE
      IMPORTING keys FOR Booking~validateConnection.

    METHODS validateCurrencyCode FOR VALIDATE ON SAVE
      IMPORTING keys FOR Booking~validateCurrencyCode.

    METHODS validateCustomer FOR VALIDATE ON SAVE
      IMPORTING keys FOR Booking~validateCustomer.

    METHODS validateFlightPrice FOR VALIDATE ON SAVE
      IMPORTING keys FOR Booking~validateFlightPrice.

    METHODS validateStatus FOR VALIDATE ON SAVE
      IMPORTING keys FOR Booking~validateStatus.

ENDCLASS.

CLASS lhc_Booking IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD CalculateTotalPrice.
  ENDMETHOD.

  METHOD setBokkingDate.
  ENDMETHOD.

  METHOD setBokkingNumber.
  ENDMETHOD.

  METHOD validateConnection.
  ENDMETHOD.

  METHOD validateCurrencyCode.
  ENDMETHOD.

  METHOD validateCustomer.
  ENDMETHOD.

  METHOD validateFlightPrice.
  ENDMETHOD.

  METHOD validateStatus.
  ENDMETHOD.

ENDCLASS.
