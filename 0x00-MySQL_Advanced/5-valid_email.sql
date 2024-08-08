-- Drop the trigger if it already exists
DROP TRIGGER IF EXISTS reset_valid_email;

-- Create the trigger
DELIMITER //

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has changed
    IF OLD.email <> NEW.email THEN
        -- Reset valid_email to 0 if email has changed
        SET NEW.valid_email = 0;
    END IF;
END //

DELIMITER ;
