@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado Status Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DLRAP_CERTIFST_049
  as select from ZI_DLRAP_DET_ST_49
  association to parent ZI_DLRAP_CERTIFPRODUCT_049 as _Certif on $projection.CertUUID = _Certif.CertUuid
  association [1..1] to ZI_DLRAP_PRODUCT_49 as _Prod on $projection.Matnr = _Prod.Matnr
                                                     and _Prod.Language = $session.system_language
{
  key StateUUID,
      CertUUID,
      Matnr,
      _Prod.Maktx as Maktx,
      Version,
      Status,
      StatusOld,
      @Semantics.user.lastChangedBy: true
      LastChangeBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangeAt,
       @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangeAt,
      _Prod,
      _Certif 
      
}
