CREATE DOMAIN entity_key VARCHAR(50);
CREATE EXTENSION pgcrypto;

CREATE TABLE dialog (
    chat_id entity_key PRIMARY KEY DEFAULT concat('DLG', gen_random_uuid()),
    participants entity_key[] NOT NULL,
    created_ts TIMESTAMP DEFAULT NOW()
);