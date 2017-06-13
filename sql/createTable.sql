CREATE TABLE IF NOT EXISTS dieBase2 (
	dieID INT PRIMARY KEY AUTO_INCREMENT,
    jobNumber INT UNIQUE NOT NULL,
    dateCreated DATETIME DEFAULT CURRENT_TIMESTAMP,
    datePurchased DATE,
    dateLastUsed DATE,
    customerName TEXT NOT NULL,
    customerID INT NOT NULL,
    tags TEXT,
    flatWidth INT,
    flatHeight INT,
    finishedWidth INT,
    finishedHeight INT,
    numPockets INT,
    pocketSize TEXT,
    machine ENUM("Sanwa", "Heidelberg", "Kluge"),
    location ENUM("Green Inventory", "Gold Inventory", "Sanwa", "Heidelberg", "Kluge", "Awaiting Arrival"),
    expectedUsage ENUM("One time use", "More than once", "Regular", "Unknown"),
    numberUp INT,
    dieVendor TEXT,
    docketReviewed ENUM("false", "true"),
    description TEXT,
    notes TEXT
);