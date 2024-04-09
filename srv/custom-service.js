const cds = require('@sap/cds');

module.exports = async (srv) => {
  // Connect to external service
  const ZWORK_CENTER_SRV = await cds.connect.to("ZWORK_CENTER_SRV");

  // Event listener for READ requests on WorkCenterETSet
  srv.on('READ', 'WorkCenterETSet', async (req) => {
    try {
      // Fetch data from external service
      const results = await ZWORK_CENTER_SRV.run(req.query);

      // Optional data transformation (replace with your logic if needed)
      const transformedData = results.map((item) => ({
        // Apply transformation logic to each item
        WorkCenter: item.WorkCenter,
        Plant: item.Plant,
        // ... additional fields if needed
      }));

      // Return transformed or raw data
      return transformedData || results;
    } catch (error) {
      // Handle errors gracefully
      console.error("Error fetching data:", error);
      // Consider returning an appropriate error response to the client
    }
  });
};
