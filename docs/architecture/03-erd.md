# Entity Relationship Model (ERD)

**Project:** AI Customer Service Platform  
**Version:** 1.0

---

# Purpose

This document defines the logical relationships between all business entities.

The ERD is the authoritative source for database design.

---

# Platform Hierarchy

Platform
    │
    └── Company
            │
            ├── Branch
            │      │
            │      └── Service Area
            │
            ├── Users
            ├── Teams
            ├── Knowledge
            ├── Customers
            ├── Assets
            ├── Tickets
            └── AI Configuration

---

# Core Domain

Company

1 ---- * Branch

Company

1 ---- * User

Company

1 ---- * Team

Company

1 ---- * Company Settings

---

# Geography

Country

1 ---- * Governorate

Governorate

1 ---- * District

District

1 ---- * Service Area

---

# Customer Domain

Company

1 ---- * Customer

Customer

1 ---- * Contact

Customer

1 ---- * Address

Customer

1 ---- * Contract

Customer

1 ---- * Asset

Customer

1 ---- * Ticket

---

# Asset Domain

Asset Type

1 ---- * Asset

Asset

1 ---- * Asset Event

Asset

1 ---- * Inspection

Asset

1 ---- * Maintenance Record

---

# Ticket Domain

Ticket Status

1 ---- * Ticket

Ticket Priority

1 ---- * Ticket

Ticket

1 ---- * Ticket Event

Ticket

1 ---- * Ticket Note

Ticket

1 ---- * Attachment

Ticket

1 ---- 1 Work Order (optional)

---

# Dispatch Domain

Work Order

1 ---- * Visit

Technician

1 ---- * Visit

Dispatch Team

1 ---- * Technician

---

# Knowledge Domain

Knowledge Category

1 ---- * Document

Document

1 ---- * Chunk

Chunk

1 ---- 1 Embedding

Procedure

1 ---- * Script

---

# AI Domain

Agent

1 ---- * Conversation

Conversation

1 ---- * Message

Conversation

1 ---- * Tool Call

Conversation

1 ---- * Memory

Conversation

0..1 Ticket

---

# Integration Domain

External System

1 ---- * Connector

Connector

1 ---- * Sync Job

Connector

1 ---- * API Credential

Connector

1 ---- * Webhook

---

# Security

Role

* ---- * Permission

User

* ---- * Role

---

# Global Rules

Every Business Entity contains:

- id
- company_id
- created_at
- updated_at
- created_by
- updated_by
- metadata

unless explicitly documented otherwise.

---

End of Document