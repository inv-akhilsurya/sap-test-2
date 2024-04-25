using app.interactions from '../db/interactions';
using ZWORK_CENTER_SRV as ZWORK_CENTER_SRV from './external/ZWORK_CENTER_SRV.cds';

service WRKCTRService {
    @odata.draft.enabled
    entity WorkCenterMain           as projection on interactions.WorkCenterMain;

    @readonly
    entity WorkCenterETSet          as
        projection on ZWORK_CENTER_SRV.WorkCenterETSet {
            key WorkCenter,
            key Plant
        }

    @readonly
    entity ActiveVersionVHSet       as
        projection on ZWORK_CENTER_SRV.ActiveVersionVHSet {
            key Language,
            key Version,
                Description
        }

    @readonly
    entity FactoryCalendarVHSet     as
        projection on ZWORK_CENTER_SRV.FactoryCalendarVHSet {
            key FactoryCalID,
            key Language,
                Text
        }

    @readonly
    entity CompanyCodeVHSet         as
        projection on ZWORK_CENTER_SRV.CompanyCodeVHSet {
            key CompanyCode,
                CompanyName
        }

    @readonly
    entity ActivityTypeVHSet        as
        projection on ZWORK_CENTER_SRV.ActivityTypeVHSet {
            key Language,
            key COArea,
            key ActivityType,
                Name
        }

    @readonly
    entity FormulaVHSet             as
        projection on ZWORK_CENTER_SRV.FormulaVHSet {
            key Language,
            key FormulaKey,
                Description
        }

    @readonly
    entity PlantSet                 as
        projection on ZWORK_CENTER_SRV.PlantSet {
            key Plant,
                Name1
        }

    @readonly
    entity WorkCenterCategoryVHSet  as
        projection on ZWORK_CENTER_SRV.WorkCenterCategoryVHSet {
            key Language,
            key WorkCenterCategory,
                Description
        };

    @readonly
    entity CostCenterVHSet          as
        projection on ZWORK_CENTER_SRV.CostCenterVHSet {
            key Language,
            key COArea,
            key CostCenter,
                Description,
        };

    @readonly
    entity PersonResponsibleVHSet   as
        projection on ZWORK_CENTER_SRV.PersonResponsibleVHSet {
            key Plant,
            key Responsible,
                Name,
        };

    @readonly
    entity LocationVHSet            as
        projection on ZWORK_CENTER_SRV.LocationVHSet {
            key Plant,
            key Location,
                Name,
        };

    @readonly
    entity UsageVHSet               as
        projection on ZWORK_CENTER_SRV.UsageVHSet {
            key Language,
            key Usage,
                UsageText,
        };

    @readonly
    entity StandardValueKeyVHSet    as
        projection on ZWORK_CENTER_SRV.StandardValueKeyVHSet {
            key Language,
            key StdValueKey,
                Stdvalkeytxt,
        };

    @readonly
    entity ControlKeyVHSet          as
        projection on ZWORK_CENTER_SRV.ControlKeyVHSet {
            key Language,
            key Application,
            key ControlKey,
                ControlKeyTxt,
        };

    @readonly
    entity UoMTimeVHSet             as
        projection on ZWORK_CENTER_SRV.UoMTimeVHSet {
            key Language,
            key Commercial,
                Measunittext,
        };

    @readonly
    entity UoMVHSet                 as
        projection on ZWORK_CENTER_SRV.UoMVHSet {
            key Language,
            key Commercial,
                Measunittext,
        };

    @readonly
    entity CapacityCategoryVHSet    as
        projection on ZWORK_CENTER_SRV.CapacityCategoryVHSet {
            key Language,
            key Capacitycat,
                CapacityCatName,
        };

    @readonly
    entity CapacityResponsibleVHSet as
        projection on ZWORK_CENTER_SRV.CapacityResponsibleVHSet {
            key Language,
            key CapacityPlanner,
                Description,
        };

    @readonly
    entity GroupingVHSet            as
        projection on ZWORK_CENTER_SRV.GroupingVHSet {
            key Language,
            key ShiftGrouping,
                Name,
        };


}
