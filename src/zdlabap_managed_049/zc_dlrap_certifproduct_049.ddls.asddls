@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_DLRAP_CERTIFPRODUCT_049 as projection on ZI_DLRAP_CERTIFPRODUCT_049
{

    key CertUuid,
    Matnr,
    maktx,
    Version,
    CertStatus,
    CertCe,
    CertGs,
    CertFcc,
    CertIso,
    CertTuev,
    LocalLastChanged,
    Icon,
    /* Associations */
    _Prod,
     /* Link de Tela */ 
    _Stats:redirected to composition child ZC_DLRAP_CERTIFSTPRODUCT_049
}
