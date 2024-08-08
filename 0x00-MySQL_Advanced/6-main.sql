-- Show the initial state of the projects and corrections tables
SELECT * FROM projects;
SELECT * FROM corrections;

-- Call the AddBonus procedure to add new corrections
CALL AddBonus((SELECT id FROM users WHERE name = "Jeanne"), "Python is cool", 100);

-- Add a new project and add corrections to it
CALL AddBonus((SELECT id FROM users WHERE name = "Jeanne"), "Bonus project", 100);
CALL AddBonus((SELECT id FROM users WHERE name = "Bob"), "Bonus project", 10);

-- Add another new project and add corrections to it
CALL AddBonus((SELECT id FROM users WHERE name = "Jeanne"), "New bonus", 90);

-- Show the final state of the projects and corrections tables
SELECT "--";
SELECT * FROM projects;
SELECT * FROM corrections;
