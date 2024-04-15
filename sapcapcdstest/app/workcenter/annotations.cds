using WRKCTRService as service from '../../srv/WKCENTER_SRV';

annotate service.WorkCenterMain with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Work Center',
                Value : WorkCenter,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Plant_Plant',
                Value : Plant_Plant,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description_Language',
                Value : Description_Language,
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
                Label : 'FactoryCalID_Language',
                Value : FactoryCalID_Language,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode_CompanyCode',
                Value : CompanyCode_CompanyCode,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'New Section',
            ID : 'NewSection',
            Target : '@UI.FieldGroup#NewSection',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Test group section',
            ID : 'Testgroupsection',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'new one',
                    ID : 'newone',
                    Target : '@UI.FieldGroup#newone',
                },],
        },
    ]
);
annotate service.WorkCenterMain with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'This is a test label',
            ID : 'Thisisatestlabel',
            Target : '@UI.FieldGroup#Thisisatestlabel',
        },
    ],
    UI.FieldGroup #Thisisatestlabel : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : 'ActivityType/@Communication.Contact#contact',
                Label : 'Contact Name',
            },
            {
                $Type : 'UI.DataField',
                Value : FormulaKey.Language,
                Label : 'Language',
            },],
    }
);
annotate service.ActivityTypeVHSet with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : Name,
    }
);
annotate service.WorkCenterMain with @(
    UI.ConnectedFields #connected : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{ActivityType_Language}1{Description_Version}',
        Data : {
            $Type : 'Core.Dictionary',
            ActivityType_Language : {
                $Type : 'UI.DataField',
                Value : ActivityType_Language,
            },
            Description_Version : {
                $Type : 'UI.DataField',
                Value : Description_Version,
            },
        },
    }
);
annotate service.WorkCenterMain with @(
    UI.HeaderInfo : {
        TypeName : 'Header WK',
        TypeNamePlural : '',
    }
);
annotate service.WorkCenterMain with {
    Plant @Common.Text : CompanyCode_CompanyCode
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
            ],
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
    ActivityType @Common.Text : {
            $value : ActivityType.ActivityType,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate service.WorkCenterMain with @(
    UI.FieldGroup #NewSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ActivityType_ActivityType,
                Label : 'ActivityType_ActivityType',
            },{
                $Type : 'UI.DataField',
                Value : ActivityType_COArea,
                Label : 'ActivityType_COArea',
            },{
                $Type : 'UI.DataField',
                Value : ActivityType_Language,
                Label : 'ActivityType_Language',
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : 'Description/@Communication.Contact#contact',
                Label : 'Test field',
            },{
                $Type : 'UI.DataField',
                Value : CompanyCode_CompanyCode,
                Label : 'CompanyCode_CompanyCode',
            },],
    }
);
annotate service.WorkCenterMain with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : Description_Language,
        role : ActivityType_ActivityType,
        org : ActivityType_ActivityType,
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #newone : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CompanyCode_CompanyCode,
                Label : 'CompanyCode_CompanyCode',
            },{
                $Type : 'UI.DataField',
                Value : Description_Language,
                Label : 'Description_Language',
            },{
                $Type : 'UI.DataField',
                Value : Description_Version,
                Label : 'Description_Version',
            },{
                $Type : 'UI.DataField',
                Value : ActivityType_COArea,
                Label : 'ActivityType_COArea',
            },
            {
                $Type : 'UI.DataField',
                Value : FirstName,
                Label : 'First Name',
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
                Label : 'Last Name',
            },],
    }
);
annotate service.ActiveVersionVHSet with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : Language,
        title : Description,
    }
);
