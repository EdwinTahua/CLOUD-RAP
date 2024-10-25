@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'travel root'
@Metadata.ignorePropagatedAnnotations: true
define root view entity y_r_travel
  as select from ytb_et_travel
  composition [0..*] of y_r_booking              as _booking
  association [0..1] to /DMO/I_Agency            as _Agency        on $projection.AgencyID = _Agency.AgencyID
  association [0..1] to /DMO/I_Customer          as _Customer      on $projection.CustomerId = _Customer.CustomerID
  association [0..1] to /DMO/I_Overall_Status_VH as _OverallStatus on $projection.OverallStatus = _OverallStatus.OverallStatus
  association [0..1] to I_Currency               as _Currency      on $projection.CurrencyCode = _Currency.Currency



{
  key travel_uuid           as TravelUuid,
      travel_id             as TravelId,
      agency_id             as AgencyID,
      customer_id           as CustomerId,
      begin_date            as BeginDate,
      end_date              as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee           as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price           as TotalPrice,
      currency_code         as CurrencyCode,
      description           as Description,
      overall_status        as OverallStatus,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      //ETag - local
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_by as LocalLastChangedBy,
      //ETag - global
      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      // Make association public
      
      last_changed_at as lastchangedat,

      _booking,
      _Agency,
      _Customer,
      _OverallStatus,
      _Currency
}
