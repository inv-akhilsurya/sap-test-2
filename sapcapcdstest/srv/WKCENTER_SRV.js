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
        this.on('READ', 'WorkCenterCategoryVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'CostCenterVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'PersonResponsibleVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'LocationVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'UsageVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'StandardValueKeyVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'ControlKeyVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'UoMTimeVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'UoMVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'CapacityCategoryVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'CapacityResponsibleVHSet', req => ZWORK_CENTER_SRV.run(req.query));
        this.on('READ', 'GroupingVHSet', req => ZWORK_CENTER_SRV.run(req.query));

        await super.init()
    }

}
module.exports = service