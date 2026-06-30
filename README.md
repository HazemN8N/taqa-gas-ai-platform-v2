# Taqa Gas AI Platform V2

> AI-powered Customer Service Platform for Natural Gas Distribution Companies

## Overview

Taqa Gas AI Platform V2 is an enterprise-grade customer service platform designed for natural gas distribution companies. It combines Artificial Intelligence, workflow automation, Retrieval-Augmented Generation (RAG), and PostgreSQL to deliver an intelligent, scalable, and maintainable customer support solution.

The platform enables customers to communicate through Telegram, WhatsApp, or future web channels while AI agents assist with troubleshooting, billing, service requests, and ticket management.

---

# Objectives

* Automate customer support
* Reduce call center workload
* Provide accurate answers from the knowledge base
* Create and manage service tickets automatically
* Assist customers before dispatching technicians
* Support multiple communication channels
* Build a modular AI platform that can grow over time

---

# Technology Stack

| Layer               | Technology            |
| ------------------- | --------------------- |
| Database            | PostgreSQL + Supabase |
| Vector Search       | pgvector              |
| Workflow Automation | n8n                   |
| AI Models           | OpenRouter            |
| Voice               | ElevenLabs            |
| Authentication      | Supabase Auth         |
| Messaging           | Telegram / WhatsApp   |
| Frontend (planned)  | React                 |
| Version Control     | Git + GitHub          |

---

# High-Level Architecture

```text
Customer
      │
Telegram / WhatsApp / Web
      │
      ▼
n8n Workflows
      │
      ▼
AI Router Agent
      │
 ┌────┼─────────────┐
 │    │             │
 ▼    ▼             ▼
Customer Technical Billing
 Agent    Agent      Agent
      │
      ▼
Knowledge Base (RAG)
      │
      ▼
Supabase PostgreSQL
      │
 ┌────┼───────────────┐
 ▼    ▼               ▼
Customers Tickets Knowledge
```

---

# Repository Structure

```text
database/
docs/
backend/
frontend/
n8n/
prompts/
knowledge/
integrations/
scripts/
assets/
```

---

# Core Modules

* Customer Management
* Ticket Management
* Meter Management
* Knowledge Base
* AI Agents
* Workflow Automation
* Technician Dispatch
* Reporting & Analytics

---

# AI Agents

* Router Agent
* Customer Support Agent
* Technical Support Agent
* Billing Agent
* Dispatcher Agent
* Supervisor Agent

Each agent has a clearly defined responsibility and communicates through structured workflows.

---

# Database

The project follows a migration-first approach.

All database changes must be implemented using SQL migration files located under:

```text
database/migrations/
```

Direct schema modifications are discouraged.

---

# Development Workflow

1. Create or update a migration.
2. Test the migration in Supabase.
3. Commit the change to Git.
4. Update documentation if required.
5. Push changes to GitHub.

---

# Roadmap

## v0.1 – Foundation

* Repository structure
* Documentation
* Database foundation

## v0.2 – Business APIs

* Ticket APIs
* Customer APIs
* Meter APIs

## v0.3 – Knowledge Layer

* Embeddings
* RAG
* Semantic Search

## v0.4 – Automation

* n8n Workflows
* Telegram Integration
* WhatsApp Integration

## v0.5 – AI Platform

* Multi-Agent System
* Memory
* Tool Calling

## v1.0 – Production

* Dashboard
* Monitoring
* CI/CD
* Security Hardening
* Production Deployment

---

# Contributing

All development should follow the documented architecture, naming conventions, and migration strategy.

---

# License

MIT License

