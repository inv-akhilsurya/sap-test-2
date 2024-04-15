using ZWORK_CENTER_SRV from './external/ZWORK_CENTER_SRV.cds';

service ZWORK_CENTER_SRVSampleService {
    @readonly
    entity UsageVHSet as projection on ZWORK_CENTER_SRV.UsageVHSet
    {        key Language, key Usage, UsageText     }    
;
    @readonly
    entity PlantSet as projection on ZWORK_CENTER_SRV.PlantSet
    {        key Plant, Name1     }    
;
}