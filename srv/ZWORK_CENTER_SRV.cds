using ZWORK_CENTER_SRV from './external/ZWORK_CENTER_SRV.cds';

service ZWORK_CENTER_SRVSampleService {
    @readonly
    entity WorkCenterETSet as projection on ZWORK_CENTER_SRV.WorkCenterETSet
    {        key WorkCenter, key Plant     }    
;
}