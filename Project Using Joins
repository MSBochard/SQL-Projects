-- Create a table containing some people famous on different video-based social media platforms
CREATE TABLE famousPeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    job TEXT,
    platform_id INTEGER);
    
INSERT INTO famousPeople (name, job, platform_id) VALUES ('CinnamonToastKen', 'content creator', 1);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('PewDiePie', 'content creator', 1);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('Kallmekris', 'content creator', 1);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('UberHaxorNova', 'streamer', 2);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('Asmongold', 'streamer', 2);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('aleks', 'streamer', 2);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('dogsbylogan', 'groomer', 3);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('easyise', 'content creator', 3);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('siiriparkss', 'hair stylist', 3);
INSERT INTO famousPeople (name, job, platform_id) VALUES ('theresavandamstylist', 'hair stylist', 3);

-- Create a table containing the different video-based social media platforms
CREATE TABLE platforms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT);

INSERT INTO platforms (name) VALUES ('YouTube');
INSERT INTO platforms (name) VALUES ('Twitch');
INSERT INTO platforms (name) VALUES ('TikTok');

-- Create a table that displays the ids of each platform a person is active on
CREATE TABLE peoplesPlatforms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    people_id INTEGER,
    job1_id INTEGER,
    job2_id INTEGER);

INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (1, 1, NULL);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (2, 1, NULL);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (3, 1, 3);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (4, 2, 1);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (5, 2, 1);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (6, 2, NULL);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (7, 3, 1);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (8, 3, 2);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (9, 3, NULL);
INSERT INTO peoplesPlatforms (people_id, job1_id, job2_id) VALUES (10, 3, NULL);

-- Display each person's job and their main platform
SELECT fp.name, fp.job, p.name
FROM famousPeople fp
JOIN platforms p
ON fp.platform_id = p.id;

-- Display each person whose job is a content creator and what platform they post their content to
SELECT fp.name, fp.job, p.name
FROM famousPeople fp
JOIN platforms p
ON fp.platform_id = p.id
WHERE fp.job = 'content creator';

-- Display everyone who is active on multiple video-based platforms
SELECT fp.name, p1.name mainJob, p2.name sideJob
FROM famousPeople fp
JOIN peoplesPlatforms pp
ON fp.id = pp.people_id
JOIN platforms p1
ON p1.id = pp.job1_id
JOIN platforms p2
ON p2.id = pp.job2_id;

-- Display everyone even if they are only active on one platform
SELECT fp.name, p1.name mainJob, p2.name sideJob
FROM famousPeople fp
JOIN peoplesPlatforms pp
ON fp.id = pp.people_id
JOIN platforms p1
ON p1.id = pp.job1_id
LEFT OUTER JOIN platforms p2
ON p2.id = pp.job2_id;
