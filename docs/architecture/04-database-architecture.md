# Database Architecture

**Project:** AI Customer Service Platform
**Version:** 1.0
**Status:** Draft

---

# Purpose

This document defines the database architecture standards for the AI Customer Service Platform.

It specifies schemas, naming conventions, ownership, security, indexing, auditing, and migration strategy.

---

# Database Engine

- PostgreSQL
- Supabase

---

# Design Principles

- Database First
- API First
- Multi-Tenant
- UUID Primary Keys
- Soft Delete
- Audit Enabled
- Row Level Security

---

# Schemas

core
master
customer
asset
ticket
dispatch
knowledge
billing
ai
integration
workflow
audit
system

---

# Naming Standards

Tables

snake_case

Columns

snake_case

Primary Keys

id UUID

Foreign Keys

<entity>_id

Examples

company_id

customer_id

ticket_id

asset_id

---

# Standard Columns

Every business table must include:

id

company_id

created_at

updated_at

created_by

updated_by

is_active

metadata

---

# Standard Data Types

UUID

TIMESTAMPTZ

TEXT

JSONB

BOOLEAN

INTEGER

NUMERIC

---

# Relationships

All business entities reference Company.

No shared ownership.

---

# Multi-Tenant Strategy

Tenant Isolation

company_id

Every business query must be filtered by company_id.

---

# Soft Delete

Business records are never physically deleted.

Columns

deleted_at

deleted_by

---

# Audit Strategy

Audit logs stored in

audit.audit_logs

Every change is recorded.

---

# Row Level Security

Enabled on every business table.

Policies depend on

company_id

user role

branch

---

# Indexing Rules

Primary Key

UUID

Foreign Keys

Always Indexed

Search Columns

GIN where needed

Embeddings

HNSW Index

---

# Migration Strategy

Versioned migrations.

Forward only.

Rollback by new migration.

Never edit applied migrations.

---

# Functions

Business logic implemented using PostgreSQL Functions.

No business logic inside workflows.

---

# Triggers

Only for

timestamps

audit

validation

No business workflow inside triggers.

---

# JSONB Usage

metadata

integration_payload

ai_context

dynamic_attributes

---

# Backup Strategy

Daily

Point In Time Recovery

Automated

---

End of Document