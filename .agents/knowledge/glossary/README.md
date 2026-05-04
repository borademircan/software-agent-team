# Glossary

This directory stores the project glossary — definitions of terms, acronyms,
and domain-specific language used across the project.

## What Belongs Here

- Business domain terms
- Technical terms specific to this project
- Acronyms and abbreviations
- Terms that are easily confused or misunderstood

## File Naming

Use a single file or split by domain:

```
glossary.md
business-terms.md
technical-terms.md
```

## Example Entry

```markdown
# Project Glossary

| Term | Definition |
|------|-----------|
| ATT  | Add-to-Tray — the mechanism for adding products to a subscription |
| MRR  | Monthly Recurring Revenue |
| Churn | When a customer cancels their subscription |
| WAV  | Waveform Audio File Format — uncompressed audio format |
| RAG  | Retrieval-Augmented Generation — an AI pattern that combines search with LLM generation |
| MCP  | Model Context Protocol — a protocol for connecting AI tools |
| ADR  | Architecture Decision Record |
| WCAG | Web Content Accessibility Guidelines |
```

## Guidelines

- Add new terms when they come up in planning or implementation.
- Keep definitions short and precise.
- Include context when a term has a project-specific meaning.
- Agents should reference the glossary when encountering unfamiliar terms.
