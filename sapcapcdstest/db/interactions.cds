namespace app.interactions;

//using {Country} from '@sap/cds/common';
using ZWORK_CENTER_SRV as WRKCTR from '../srv/external/ZWORK_CENTER_SRV';


entity WorkCenterMain {
  key WorkCenter : String(8);
  key Plant : Association to WRKCTR.PlantSet;
  Description : Association to WRKCTR.ActiveVersionVHSet;
  FactoryCalID : Association to WRKCTR.FactoryCalendarVHSet;
  CompanyCode : Association to WRKCTR.CompanyCodeVHSet;
  ActivityType : Association to WRKCTR.ActivityTypeVHSet;
  FormulaKey : Association to WRKCTR.FormulaVHSet;
  FirstName : String(100);
  LastName : String(100);
};

entity PlantTable {
  key ID : Integer;
  Plant_No : Integer;
  PlantName : Association to WRKCTR.PlantSet;
}
