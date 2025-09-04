@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basix - Status Certificados'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DLRAP_DET_ST_49 as select from zdlrap_det_st_49
{
    key state_uuid  as StateUUID,
    cert_uuid as CertUUID,
    matnr as Matnr,
    version as Version,
    status as Status,
    status_old as StatusOld,
    last_change_by as LastChangeBy,
    last_change_at as LastChangeAt,
    local_last_change_at as LocalLastChangeAt
}
