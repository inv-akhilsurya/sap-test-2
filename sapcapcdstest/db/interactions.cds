namespace app.interactions;

//using {Country} from '@sap/cds/common';
using ZWORK_CENTER_SRV as WRKCTR from '../srv/external/ZWORK_CENTER_SRV';

entity WorkCenterMain {
  key requestID          : UUID;
      WorkCenter         : String(8);
      Plant              : Association to WRKCTR.PlantSet;
      Description        : Association to WRKCTR.ActiveVersionVHSet;
      FactoryCalID       : Association to WRKCTR.FactoryCalendarVHSet;
      CompanyCode        : Association to WRKCTR.CompanyCodeVHSet;
      ActivityType       : Association to WRKCTR.ActivityTypeVHSet;
      FormulaKey         : Association to WRKCTR.FormulaVHSet;
      ApproverFirstName  : String(100);
      ApproverLastName   : String(100);
      ApproverEmail      : String(255);
      RequesterFirstName : String(100);
      RequesterLastName  : String(100);
      RequesterEmail     : String(255);
      CommenttoApprover  : String(255);
      CommenttoRequester : String(255);
      OverviewTable      : Composition of many Overview
                             on OverviewTable.ID = $self;
      GIDescription      : String(255);
      GIWorkCenter       : String(255);
      WorkCenterCategory : Association to WRKCTR.WorkCenterCategoryVHSet;
      PersonResponsible  : Association to WRKCTR.PersonResponsibleVHSet;
      Location           : Association to WRKCTR.LocationVHSet;
      Usage              : Association to WRKCTR.UsageVHSet;
      StandardValueKey   : Association to WRKCTR.StandardValueKeyVHSet;
      ControlKey         : Association to WRKCTR.ControlKeyVHSet;
      Setup              : Association to WRKCTR.UoMTimeVHSet;
      Machine            : Association to WRKCTR.UoMTimeVHSet;
      Labor              : Association to WRKCTR.UoMTimeVHSet;
      Rework             : Association to WRKCTR.UoMTimeVHSet;
      CapacityCategory   : Association to WRKCTR.CapacityCategoryVHSet;
      DurationofSetup    : Association to WRKCTR.FormulaVHSet;
      ProcessingDuration : Association to WRKCTR.FormulaVHSet;
};

entity Overview {
  ID                : Association to WorkCenterMain;
  CapacityCategory  : Association to WRKCTR.CapacityCategoryVHSet;
  SetupFormula      : Association to WRKCTR.FormulaVHSet;
  ProcessingFormula : Association to WRKCTR.FormulaVHSet;
}
