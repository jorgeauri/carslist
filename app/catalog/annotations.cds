using CatalogService as service from 'carslist../../../home/user/projects/carslist/srv/cat-service';

annotate service.Carros with @(
    UI.LineItem : [
        {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Modelo',
                Value : modelo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Marca',
                Value : marca,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ano',
                Value : ano,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Cor',
                Value : cor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Placa',
                Value : placa,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Empresa',
                Value : empresa,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Diária',
                Value : diaria,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mensal',
                Value : mensal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Desconto',
                Value : desconto,
            },
            {
                $Type : 'UI.DataField',
                Value : moeda_code,
            },
    ]
);
annotate service.Carros with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Modelo',
                Value : modelo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'marca',
                Value : marca,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ano',
                Value : ano,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Cor',
                Value : cor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Placa',
                Value : placa,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Empresa',
                Value : empresa,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Diária',
                Value : diaria,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mensal',
                Value : mensal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Desconto',
                Value : desconto,
            },
            {
                $Type : 'UI.DataField',
                Value : moeda_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Informações Gerais',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
