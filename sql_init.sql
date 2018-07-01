

CREATE TABLE entity (
    entity_id INTEGER PRIMARY KEY,
    type_name TEXT NOT NULL, -- Name of Data Model
    entity_name TEXT NOT NULL, -- Filename of data entity
    create_date TEXT, -- ISO8601 string as datetime
    modify_date TEXT -- ISO8601 string as datetime
);

CREATE TABLE asset (
    asset_id INTEGER PRIMARY KEY,
    asset_path TEXT NOT NULL, -- Path including filename, excluding assets folder prefix
    asset_type TEXT, -- Not sure if this will be useful
    -- Do we need to store the mimetype of the file?
    create_date TEXT, -- ISO8601
    modify_date TEXT -- ISO8601
);

CREATE TABLE model (
    model_id INTEGER PRIMARY KEY,
    type_name TEXT NOT NULL,
    create_date TEXT,
    modify_date TEXT
);
