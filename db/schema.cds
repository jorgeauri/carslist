namespace meus.carros;
using { Currency, managed, sap } from '@sap/cds/common';

entity Carros : managed {
    key ID    : Integer;
    modelo    : String;
    marca     : Association to Marcas;
    categoria : Association to Categorias;
    ano       : String;
    cor       : String; 
    placa     : String;
    empresa   : Integer; 
    diaria    : Decimal(9,2);
    mensal    : Decimal(9,2);
    desconto  : String;
    moeda     : Currency;
}

entity Marcas : managed {
    key ID : Integer;
    nome   : String;
    marcas : Association to many Carros on marcas.marca = $self;
}

entity Categorias : sap.common.CodeList {
    key ID : Integer;
    parent : Association to Categorias;
    children : Composition of many Categorias on children.parent = $self;
}


