@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Cadastro de Produtos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DLRAP_PRODUCT_49
  as select from zdlrap_product
{
  key matnr    as Matnr,
  key language as Language,
      maktx    as Maktx
}
