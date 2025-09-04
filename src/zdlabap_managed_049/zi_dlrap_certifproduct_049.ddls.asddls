@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado com  Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_DLRAP_CERTIFPRODUCT_049
  as select from zdlrap_cert_049
  composition [1..*] of ZI_DLRAP_CERTIFST_049 as _Stats
  association [1..1] to ZI_DLRAP_PRODUCT_49 as _Prod on $projection.Matnr = _Prod.Matnr
                                                    and _Prod.Language = $session.system_language
                                                    
{
  key cert_uuid          as CertUuid,
      matnr              as Matnr,
      _Prod[ Language = $session.system_language ].Maktx as maktx,     
      version            as Version,
      cert_status        as CertStatus,
      cert_ce            as CertCe,
      cert_gs            as CertGs,
      cert_fcc           as CertFcc,
      cert_iso           as CertIso,
      cert_tuev          as CertTuev,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed as LocalLastChanged,
      'sap-icon://accounting-document-verification' as Icon,
      
      _Stats,
      _Prod
}
