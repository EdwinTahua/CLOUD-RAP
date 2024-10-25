@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel'
@Metadata.ignorePropagatedAnnotations: true
define root view entity y_i_travel_et 
provider contract transactional_interface
as projection on y_r_travel
{
    key TravelUuid,
    TravelId,
    AgencyID,
    CustomerId,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    /* Associations */
    _Agency,
    _booking: redirected to composition child y_i_booking_et,
    _Currency,
    _Customer,
    _OverallStatus
}
