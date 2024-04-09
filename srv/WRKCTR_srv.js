const cds = require('@sap/cds');

class service extends cds.ApplicationService {



  async init() {


    

    const ZWORK_CENTER_SRV = await cds.connect.to("ZWORK_CENTER_SRV"); 
    this.on('READ', 'WorkCenterETSet', req => ZWORK_CENTER_SRV.run(req.query)); 
    this.on('READ', 'ActiveVersionVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
    this.on('READ', 'FactoryCalendarVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
    this.on('READ', 'CompanyCodeVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
    this.on('READ', 'ActivityTypeVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
    this.on('READ', 'FormulaVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
    this.on('READ', 'PlantSet', req => ZWORK_CENTER_SRV.run(req.query)); 

    await super.init()
  }

}
module.exports = service