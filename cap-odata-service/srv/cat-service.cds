using { Books as BooksEntity } from '../db/data-model';

service CatalogService @(path:'/CatalogService') {
  entity Books as projection on BooksEntity;
}