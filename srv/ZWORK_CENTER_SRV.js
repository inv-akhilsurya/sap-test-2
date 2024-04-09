const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ZWORK_CENTER_SRV = await cds.connect.to("ZWORK_CENTER_SRV"); 
      srv.on('READ', 'WorkCenterETSet', req => ZWORK_CENTER_SRV.run(req.query));
      srv.on('READ', 'WorkCenterETSet', req => ZWORK_CENTER_SRV.run(req.query)); 
      srv.on('READ', 'ActiveVersionVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
      srv.on('READ', 'FactoryCalendarVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
      srv.on('READ', 'CompanyCodeVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
      srv.on('READ', 'ActivityTypeVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
      srv.on('READ', 'FormulaVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
      srv.on('READ', 'PlantSet', req => ZWORK_CENTER_SRV.run(req.query)); 
}