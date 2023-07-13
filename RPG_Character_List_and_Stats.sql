-- Create the database that will hold the player's characters and their stats
CREATE TABLE character (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    level INTEGER,
    class TEXT,
    health INTEGER,
    mana INTEGER,
    strength INTEGER,
    agility INTEGER,
    intellect INTEGER);

INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Swiftr', 10, 'Rogue', 210, NULL, 5, 70, 5);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Aldian', 15, 'Paladin', 365, 90, 45, 5, 35);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Cyndri', 20, 'Mage', 220, 220, 5, 10, 75);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Zaldim', 25, 'Warlock', 225, 225, 10, 15, 70);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Thunde', 30, 'Warrior', 430, NULL, 85, 10, 5);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Thrann', 35, 'Hunter', 250, 100, 15, 70, 20);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Raghak', 40, 'Shaman', 340, 190, 40, 15, 55);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Yldren', 45, 'Druid', 245, 245, 10, 45, 60);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Belver', 50, 'Death Knight', 450, NULL, 90, 20, 10);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Allene', 55, 'Priest', 255, 255, 10, 20, 95);
INSERT INTO character (name, level, class, health, mana, strength, agility, intellect) VALUES ('Serene', 60, 'Monk', 360, 135, 25, 65, 40);

-- Alter the table so that characters can be deleted without deleting their data
ALTER TABLE character ADD deleted TEXT default 'false';

-- Update the table to show which characters are hidden from the player's character list
UPDATE character SET deleted = 'true'
WHERE id = 1 OR id = 9 OR id = 5;

SELECT * FROM character;

-- Character with an id of 1 has been listed as deleted for a month, alter the table to get rid of this character's data
DELETE FROM character  WHERE id = 1;

SELECT * FROM character;


