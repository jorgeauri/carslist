using { meus.carros as meus } from '../db/schema';

service AdminService @(_requires:'authenticated-user') {
  entity Carros as projection on meus.Carros;
  entity Marcas as projection on meus.Marcas;
  entity Categorias as select from meus.Categorias;
  
}



// Enable Fiori Draft for Orders
//annotate AdminService.Orders with @odata.draft.enabled;
// annotate AdminService.Books with @odata.draft.enabled;

// Temporary workaround -> https://github.wdf.sap.corp/cap/issues/issues/3121
/* extend service AdminService with {
  entity OrderItems as select from my.OrderItems;
} */
// Restrict access to orders to users with role "admin"

  annotate AdminService.Carros with  @(restrict: [
   { grant: 'READ', to: 'admin' } 
  ]); 