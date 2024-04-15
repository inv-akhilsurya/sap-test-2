using app.interactions from '../db/interactions';
using ZWORK_CENTER_SRV as ZWORK_CENTER_SRV from './external/ZWORK_CENTER_SRV.cds';
service WRKCTRService {
@odata.draft.enabled
 entity WorkCenterMain
    as projection on  interactions.WorkCenterMain;

@readonly
    entity WorkCenterETSet as projection on ZWORK_CENTER_SRV.WorkCenterETSet
    {        key WorkCenter, key Plant     } 
    @readonly
    entity ActiveVersionVHSet as projection on ZWORK_CENTER_SRV.ActiveVersionVHSet
    {        key Language, key Version ,Description    } 
    @readonly
    entity FactoryCalendarVHSet as projection on ZWORK_CENTER_SRV.FactoryCalendarVHSet
    {        key FactoryCalID, key Language , Text     } 
    @readonly
    entity CompanyCodeVHSet as projection on ZWORK_CENTER_SRV.CompanyCodeVHSet
    {        key CompanyCode, CompanyName     } 
    @readonly
    entity ActivityTypeVHSet as projection on ZWORK_CENTER_SRV.ActivityTypeVHSet
    {        key Language, key COArea, key ActivityType ,Name    }    
     @readonly
    entity FormulaVHSet as projection on ZWORK_CENTER_SRV.FormulaVHSet
    {        key Language, key FormulaKey,  Description}
     @readonly
    entity PlantSet as projection on ZWORK_CENTER_SRV.PlantSet
    {        key Plant,  Name1}
}

