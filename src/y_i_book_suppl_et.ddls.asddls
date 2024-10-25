@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supl'
@Metadata.ignorePropagatedAnnotations: true
define view entity y_i_book_suppl_et as projection on y_r_book_suppl
//  association        to parent y_i_booking_et as _Booking        on  $projection.TravelUuid  = _Booking.TravelUuid
//                                                                  and $projection.BookingUUID = _Booking.BookingUUID
//
//  association [1..1] to y_i_travel_et         as _Travel         on  $projection.TravelUuid = _Travel.TravelUuid
//  association [1..1] to /DMO/I_Supplement      as _Product        on  $projection.SupplementId = _Product.SupplementID
//  association [1..*] to /DMO/I_SupplementText  as _SupplementText on  $projection.SupplementId = _SupplementText.SupplementID
{
    key BooksupplUuid,
    TravelUuid,
    BookingUUID,
    BookingSupplementId,
    SupplementId,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    LocalLastChangedAt,
    /* Associations */
    _booking: redirected to parent y_i_booking_et,
    _Product,
    _SupplementText,
    _travel: redirected to y_i_travel_et
}
