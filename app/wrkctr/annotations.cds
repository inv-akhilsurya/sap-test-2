using WRKCTRService as service from '../../srv/WRKCTR_srv';

annotate service.WorkCenterMain with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'WorkCenter',
                Value : WorkCenter,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Plant',
                Value : Plant_Plant,
            },
            {
                $Type : 'UI.DataField',
                Value : Description.Description,
                Label : 'Description',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description_Version',
                Value : Description_Version,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FactoryCalID_FactoryCalID',
                Value : FactoryCalID_FactoryCalID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode_CompanyCode',
                Value : CompanyCode_CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ActivityType_COArea',
                Value : ActivityType_COArea,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ActivityType_ActivityType',
                Value : ActivityType_ActivityType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormulaKey_FormulaKey',
                Value : FormulaKey_FormulaKey,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.PlantSet with {
    Plant @Common.Text : {
        $value : Name1,
        ![@UI.TextArrangement] : #TextLast,
    }
};
annotate service.WorkCenterMain with {
    Plant @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PlantSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Plant_Plant,
                    ValueListProperty : 'Plant',
                },
            ],
            Label : 'Plant_VH',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.WorkCenterMain with {
    Plant @Common.Text : {
        $value : Plant.Name1,
        ![@UI.TextArrangement] : #TextLast,
    }
};
annotate service.WorkCenterMain with {
    WorkCenter @Common.Text : Description.Description
};
annotate service.WorkCenterMain with {
    FactoryCalID @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'FactoryCalendarVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : FactoryCalID_FactoryCalID,
                    ValueListProperty : 'FactoryCalID',
                },
            ],
            Label : 'faccal_VH',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.FactoryCalendarVHSet with {
    FactoryCalID @Common.Text : Text
};
annotate service.WorkCenterMain with {
    ActivityType @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ActivityTypeVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ActivityType_ActivityType,
                    ValueListProperty : 'ActivityType',
                },
                 {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ActivityType_COArea,
                    ValueListProperty : 'COArea',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : CompanyCode_CompanyCode,
                    ValueListProperty : 'COArea',
                },
            ],
            Label : 'Acttype_VH',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.ActivityTypeVHSet with {
    ActivityType @Common.Text : {
        $value : Name,
        ![@UI.TextArrangement] : #TextLast,
    }
};
annotate service.WorkCenterMain with {
    CompanyCode @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'CompanyCodeVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : CompanyCode_CompanyCode,
                    ValueListProperty : 'CompanyCode',
                },
            ],
            Label : 'CoCd_VH',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.CompanyCodeVHSet with {
    CompanyCode @Common.Text : {
        $value : CompanyName,
        ![@UI.TextArrangement] : #TextLast,
    }
};
