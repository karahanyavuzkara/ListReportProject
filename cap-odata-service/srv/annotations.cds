using CatalogService from './cat-service';

annotate CatalogService.Books with @(
  UI: {
    LineItem: [
      { Value: ID },
      { Value: title },
      { Value: author },
      { Value: price }
    ],
    Facets: [
      {
        $Type : 'UI.CollectionFacet',
        Label : 'Book Details',
        Facets: [
          {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#Main',
            Label : 'Main'
          }
        ]
      }
    ],
    FieldGroup#Main: {
      Data: [
        { Value: ID },
        { Value: title },
        { Value: author },
        { Value: price }
      ]
    }
  },
  Capabilities: {
    UpdateRestrictions: { Updatable  : true },
    InsertRestrictions: { Insertable : true },
    DeleteRestrictions: { Deletable   : true }
  }
);
