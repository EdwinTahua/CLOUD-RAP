@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supl'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity y_r_book_suppl
  as select from ytb_et_suppl
  association        to parent y_r_booking as _booking        on $projection.BooksupplUuid = _booking.BookingUuid
  association [1..1] to y_r_travel         as _travel         on $projection.TravelUuid = _travel.TravelUuid

  association [1..1] to /DMO/I_Supplement     as _Product        on $projection.SupplementId = _Product.SupplementID

  association [1..1] to /DMO/I_SupplementText as _SupplementText on $projection.SupplementId = _SupplementText.SupplementID
{
  key booksuppluuid        as BooksupplUuid,
      rootuuid             as TravelUuid,
      parentuuid           as BookingUUID, 
      bookingsupplementid as BookingSupplementId,
      supplementid         as SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
      currencycode         as CurrencyCode,
      //eTag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _booking,
      _Product,
      _SupplementText,
      _travel
}
