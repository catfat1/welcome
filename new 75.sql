 select distinct bol.billOfLading.id, bol.billOfLading.manifest.id, bol.billOfLading.nbr, bol.billOfLading.manifest.manifestType.name 
 from GCBolInvoiceStatus as bol where  bol.bolId in (select stev.bolItem.billOfLading.id 
											from B_StevComActual stev where stev.stevedoreId in (9200)) 
 and bol.invoiceTypeId = 3097 and bol.billingStatusId = 1 
 and bol.visitId is not null  and bol.visitId =7483 
 order by bol.billOfLading.id, bol.billOfLading.manifest.id, bol.billOfLading.nbr