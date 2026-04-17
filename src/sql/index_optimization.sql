-- Auto-generated: index optimization v2172
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_2172 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_2172_name
    ON index_optimization_2172(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_2172_created
    ON index_optimization_2172(created_at DESC);

-- Seed data
INSERT INTO index_optimization_2172 (name, counter)
VALUES
    ('item_0', 'val_0_2172'),
    ('item_1', 'val_1_2172'),
    ('item_2', 'val_2_2172'),
    ('item_3', 'val_3_2172'),
    ('item_4', 'val_4_2172'),
    ('item_5', 'val_5_2172'),
    ('item_6', 'val_6_2172'),
    ('item_7', 'val_7_2172'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_2172_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_2172
GROUP BY name
ORDER BY total DESC;
