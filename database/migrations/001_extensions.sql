-- ============================================================
-- Taqa Gas AI Platform V2
-- Migration: 001_extensions.sql
-- Description: Install required PostgreSQL extensions
-- ============================================================

BEGIN;

-- UUID generation
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Cryptographic functions
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Vector embeddings
CREATE EXTENSION IF NOT EXISTS vector;

-- Text search
CREATE EXTENSION IF NOT EXISTS pg_trgm;

-- Case-insensitive text
CREATE EXTENSION IF NOT EXISTS citext;

COMMIT;