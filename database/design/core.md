# Core Domain Design

**Project:** AI Customer Service Platform  
**Domain:** Core  
**Version:** 1.0  
**Status:** Draft

---

# Purpose

The Core Domain provides the organizational foundation of the platform.

Every other business domain depends on the Core Domain.

It is responsible for tenant isolation, identity, authorization, and organizational hierarchy.

---

# Responsibilities

- Company Management
- Branch Management
- User Management
- Role Management
- Permission Management
- Team Management
- Company Settings

---

# Business Rules

1. Every Company is isolated from all other Companies.
2. Every Branch belongs to one Company.
3. Every User belongs to one Company.
4. A User may belong to multiple Roles.
5. A Role may contain multiple Permissions.
6. Teams are company-specific.
7. All business data references Company.

---

# Entity Overview

## Company

Represents a tenant using the platform.

### Attributes

- id
- code
- name
- legal_name
- industry_id
- tax_number
- commercial_registration
- status
- timezone
- default_language
- logo_url
- website
- metadata
- created_at
- updated_at

---

## Branch

Represents a physical or operational branch.

### Attributes

- id
- company_id
- code
- name
- governorate_id
- district_id
- address
- latitude
- longitude
- phone
- email
- manager_user_id
- metadata

---

## Team

Operational teams inside a branch.

Examples

- Customer Service
- Emergency
- Maintenance
- Billing
- Dispatch

---

## User

Platform user.

Examples

- Agent
- Supervisor
- Manager
- Technician
- Administrator

---

## Role

Security role.

Examples

- Admin
- Supervisor
- Agent
- Dispatcher
- Technician

---

## Permission

Represents a single capability.

Examples

- ticket.read
- ticket.create
- ticket.assign
- customer.update
- knowledge.publish

---

## Company Settings

Stores tenant-specific configuration.

Examples

- Branding
- AI Provider
- Working Hours
- SLA Defaults
- Notification Settings

---

# Relationships

Company

1 ---- * Branch

Company

1 ---- * User

Company

1 ---- * Team

Company

1 ---- 1 Company Settings

Role

* ---- * Permission

User

* ---- * Role

Branch

1 ---- * Team

Branch

1 ---- * User

---

# Security

Every table uses Row Level Security.

Tenant isolation is enforced using company_id.

---

# Standard Columns

Every table contains

- id
- company_id (except Company)
- created_at
- updated_at
- created_by
- updated_by
- is_active
- metadata

---

# Future Extensions

- Multi-language support
- Multiple brands per company
- Multi-region companies
- SSO integration
- LDAP integration
- Azure AD
- Google Workspace

---

End of Document