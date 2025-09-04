@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Consumption - Certifcados Status'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_DLRAP_CERTIFSTPRODUCT_049 as projection on ZI_DLRAP_CERTIFST_049
{
    key StateUUID, 
    CertUUID,
    Matnr,
    Maktx,
    Version,
    Status,
    StatusOld,
    LastChangeBy,
    LastChangeAt,
    LocalLastChangeAt,
    /* Associations */
    
    _Certif: redirected to parent ZC_DLRAP_CERTIFPRODUCT_049,
    _Prod 
   
}
