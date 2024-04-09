const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ZWORK_CENTER_SRV = await cds.connect.to("ZWORK_CENTER_SRV"); 
      srv.on('READ', 'WorkCenterETSet', req => ZWORK_CENTER_SRV.run(req.query)); 
}