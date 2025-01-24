@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZCC4AZTEST_RAP_UNAMANAGED
  as select from ZCC4AZTEST_RAP
{
  key key_field      as KeyFieldRoot,
      data_field     as DataFieldRoot,
      char_field     as CharFieldRoot,
      crea_date_time as Timestamp,
      lchg_date_time as LastChangedAt
}
