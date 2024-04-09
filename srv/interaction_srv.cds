using app.interactions from '../db/interactions';
service CatalogService {
@odata.draft.enabled
 entity Interactions_Header
    as projection on interactions.Interactions_Header;

 entity Interactions_Items
    as projection on  interactions.Interactions_Items;

 entity WorkCenterETSet
    as projection on  interactions.WorkCenterETSet;
}