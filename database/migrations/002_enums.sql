-- ============================================================
-- Taqa Gas AI Platform V2
-- Migration: 002_enums.sql
-- Description: Create all application ENUM types
-- ============================================================

BEGIN;

-- ============================================================
-- Ticket Priority
-- ============================================================

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_type
        WHERE typname = 'ticket_priority'
    ) THEN
        CREATE TYPE public.ticket_priority AS ENUM (
            'low',
            'normal',
            'high',
            'critical'
        );
    END IF;
END $$;

-- ============================================================
-- Ticket Status
-- ============================================================

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_type
        WHERE typname = 'ticket_status'
    ) THEN
        CREATE TYPE public.ticket_status AS ENUM (
            'new',
            'assigned',
            'in_progress',
            'waiting_customer',
            'waiting_dispatch',
            'resolved',
            'closed',
            'cancelled'
        );
    END IF;
END $$;

-- ============================================================
-- Ticket Source
-- ============================================================

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_type
        WHERE typname = 'ticket_source'
    ) THEN
        CREATE TYPE public.ticket_source AS ENUM (
            'telegram',
            'whatsapp',
            'web',
            'phone',
            'internal'
        );
    END IF;
END $$;

-- ============================================================
-- Ticket Category
-- ============================================================

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM pg_type
        WHERE typname = 'ticket_type'
    ) THEN
        CREATE TYPE public.ticket_type AS ENUM (
            'emergency',
            'technical',
            'commercial',
            'billing',
            'complaint',
            'service_request',
            'inspection',
            'other'
        );
    END IF;
END $$;

COMMIT;