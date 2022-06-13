using { meus.carros as meus } from '../db/schema';
@requires: 'authenticated-user'
service CatalogService {//@(path:'/browse') {

    @readonly entity Carros as SELECT from meus.Carros {*,
        marca.nome as marca
    }   excluding { createdBy, modifiedBy };

    

    //action submitOrder (brand:Carros:ID, quantia: Integer);
}

  annotate CatalogService.Carros with  @(restrict: [
   { grant: 'READ', to: 'admin' } 
  ]); 