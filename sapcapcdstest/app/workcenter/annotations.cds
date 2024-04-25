using WRKCTRService as service from '../../srv/WKCENTER_SRV';
using from '../../db/interactions';

annotate service.ActivityTypeVHSet with @(Communication.Contact #contact: {
    $Type: 'Communication.ContactType',
    fn   : Name,
});

annotate service.ActivityTypeVHSet with {
    ActivityType @Common.Text: {
        $value                : Name,
        ![@UI.TextArrangement]: #TextLast,
    }
};

annotate service.ActiveVersionVHSet with @(
    Communication.Contact #contact: {
        $Type: 'Communication.ContactType',
        fn   : Language,
        title: Description,
    },
    UI.LineItem                   : [
        {
            $Type            : 'UI.DataField',
            Value            : Description,
            Label            : 'Description',
            ![@UI.Importance]: #Low,
        },
        {
            $Type: 'UI.DataField',
            Value: Language,
            Label: 'Language',
        },
    ],
);

annotate service.ActivityTypeVHSet with {
    Language @Common.Text: {
        $value                : Name,
        ![@UI.TextArrangement]: #TextFirst,
    }
};

annotate service.FormulaVHSet with {
    FormulaKey @Common.Text: {
        $value                : Description,
        ![@UI.TextArrangement]: #TextFirst,
    }
};

annotate service.CapacityCategoryVHSet with {
    Capacitycat @Common.Text : {
        $value : CapacityCatName,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.PlantSet with {
    Plant @Common.Text : {
        $value : Name1,
        ![@UI.TextArrangement] : #TextFirst,
    }
};

annotate service.LocationVHSet with {
    Location @Common.Text : {
        $value : Name,
        ![@UI.TextArrangement] : #TextFirst,
    }
};

annotate service.PlantSet with {
    Name1 @Common.Text : {
            $value : Plant,
            ![@UI.TextArrangement] : #TextFirst,
        }
};

annotate service.PersonResponsibleVHSet with {
    Name @Common.Text : {
        $value : Responsible,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.WorkCenterMain with @(
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Workflow Settings',
            ID : 'WorkflowSettings',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Requester',
                    ID : 'Requester',
                    Target : '@UI.FieldGroup#Requester',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Approver',
                    ID : 'Approver',
                    Target : '@UI.FieldGroup#Approver',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Basic Data',
            ID : 'BasicData',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'General Information',
                    ID : 'GeneralInformation',
                    Target : '@UI.FieldGroup#GeneralInformation',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Standard Value Maintenance',
                    ID : 'StandardValueMaintenance',
                    Target : '@UI.FieldGroup#StandardValueMaintenance',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Default Values',
            ID : 'DefaultValues',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Operation Default Values',
                    ID : 'OperationDefaultValues',
                    Target : '@UI.FieldGroup#OperationDefaultValues',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Capacities',
            ID : 'Capacities',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Overview',
                    ID : 'Overview',
                    Target : 'OverviewTable/@UI.LineItem#Overview',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Scheduling',
            ID : 'Scheduling',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Schedule Basis',
                    ID : 'ScheduleBasis',
                    Target : '@UI.FieldGroup#ScheduleBasis',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Execution Time',
                    ID : 'ExecutionTime',
                    Target : '@UI.FieldGroup#ExecutionTime',
                },],
        },],
    UI.FieldGroup #WorkflowSettings : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #Requester : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CommenttoApprover,
                Label : 'Comment to Approver',
            },{
                $Type : 'UI.DataField',
                Value : RequesterFirstName,
                Label : 'Requester First Name',
            },{
                $Type : 'UI.DataField',
                Value : RequesterLastName,
                Label : 'Requester Last Name',
            },{
                $Type : 'UI.DataField',
                Value : RequesterEmail,
                Label : 'Requester Email',
            },],
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #Approver : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ApproverFirstName,
                Label : 'Approver First Name',
            },{
                $Type : 'UI.DataField',
                Value : ApproverLastName,
                Label : 'Approver Last Name',
            },{
                $Type : 'UI.DataField',
                Value : ApproverEmail,
                Label : 'Approver Email',
            },{
                $Type : 'UI.DataField',
                Value : CommenttoRequester,
                Label : 'Comment to Requester',
            },],
    }
);
annotate service.WorkCenterMain with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : 'Work Center',
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : GIWorkCenter,
                Label : 'WorkCenter',
            },{
                $Type : 'UI.DataField',
                Value : GIDescription,
                Label : 'Description',
            },
            {
                $Type : 'UI.DataField',
                Value : Plant_Plant,
                Label : 'Plant_Plant',
            },
            {
                $Type : 'UI.DataField',
                Value : Location_Location,
                Label : 'Location',
            },
            ],
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #StandardValueMaintenance : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : StandardValueKey_StdValueKey,
                Label : 'Standard Value Key',
            },
            ],
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #OperationDefaultValues : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ControlKey_ControlKey,
                Label : 'Control Key',
            },],
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #UnitofMeasurementofStandardvalues : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.Overview with @(
    UI.LineItem #Overview : [
        {
            $Type : 'UI.DataField',
            Value : CapacityCategory_Capacitycat,
            Label : 'Capacity Category',
        },{
            $Type : 'UI.DataField',
            Value : SetupFormula_FormulaKey,
            Label : 'Setup Formula',
        },{
            $Type : 'UI.DataField',
            Value : ProcessingFormula_FormulaKey,
            Label : 'Processing Formula',
        },]
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #ScheduleBasis : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CapacityCategory_Capacitycat,
                Label : 'Capacity Category',
            },],
    }
);
annotate service.WorkCenterMain with @(
    UI.FieldGroup #ExecutionTime : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : DurationofSetup_FormulaKey,
                Label : 'Durationof Setup',
            },{
                $Type : 'UI.DataField',
                Value : ProcessingDuration_FormulaKey,
                Label : 'Processing Duration',
            },],
    }
);
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
        },
        Common.ValueListWithFixedValues : true
)};

annotate service.WorkCenterMain with {
    PersonResponsible @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PersonResponsibleVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : PersonResponsible_Plant,
                    ValueListProperty : 'Responsible',
                },
                {
                    $Type : 'Common.ValueListParameterIn',
                    ValueListProperty : 'Plant',
                    LocalDataProperty : Plant_Plant,
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};


annotate service.WorkCenterMain with {
    StandardValueKey @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'StandardValueKeyVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : StandardValueKey_Language,
                    ValueListProperty : 'StdValueKey',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.StandardValueKeyVHSet with {
    StdValueKey @Common.Text : {
        $value : Stdvalkeytxt,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.WorkCenterMain with {
    ControlKey @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ControlKeyVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ControlKey_Application,
                    ValueListProperty : 'ControlKey',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.ControlKeyVHSet with {
    ControlKey @Common.Text : {
        $value : ControlKeyTxt,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.Overview with {
    CapacityCategory @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'CapacityCategoryVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : CapacityCategory_Capacitycat,
                    ValueListProperty : 'Capacitycat',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Overview with {
    SetupFormula @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'FormulaVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : SetupFormula_FormulaKey,
                    ValueListProperty : 'FormulaKey',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Overview with {
    ProcessingFormula @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'FormulaVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ProcessingFormula_FormulaKey,
                    ValueListProperty : 'FormulaKey',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.WorkCenterMain with {
    CapacityCategory @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'CapacityCategoryVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : CapacityCategory_Capacitycat,
                    ValueListProperty : 'Capacitycat',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.WorkCenterMain with {
    DurationofSetup @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'FormulaVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : DurationofSetup_FormulaKey,
                    ValueListProperty : 'FormulaKey',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.WorkCenterMain with {
    ProcessingDuration @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'FormulaVHSet',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ProcessingDuration_FormulaKey,
                    ValueListProperty : 'FormulaKey',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.PersonResponsibleVHSet with {
    Responsible @Common.Text : {
        $value : Name,
        ![@UI.TextArrangement] : #TextLast,
    }
};

annotate service.WorkCenterMain with {
    Location @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'LocationVHSet',
            Parameters : [
                    {
                        $Type : 'Common.ValueListParameterInOut',
                        LocalDataProperty : Location_Location,
                        ValueListProperty : 'Location',
                    },
                    {
                        $Type : 'Common.ValueListParameterIn',
                        ValueListProperty : 'Plant',
                        LocalDataProperty : Plant_Plant,
                    },
                    {
                        $Type : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty : 'Name',
                    },
                ],
        },
        Common.ValueListWithFixedValues : false
)};
