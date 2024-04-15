const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ZWORK_CENTER_SRV = await cds.connect.to("ZWORK_CENTER_SRV"); 
      srv.on('READ', 'UsageVHSet', req => ZWORK_CENTER_SRV.run(req.query)); 
      srv.on('READ', 'PlantSet', req => ZWORK_CENTER_SRV.run(req.query)); 
}