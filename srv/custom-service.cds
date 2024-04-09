service CustomService {
  // ... other entities

  entity WorkCenter { // Adjust field names and types as needed
    key WorkCenter : String(8) not null;
    Plant : String(4) not null;
    // ... other fields from external service data
  }
}
