# Documentation Standards

Project-wide documentation standards. All documentation must follow these
guidelines.

## General Principles

- **Accuracy.** Documentation must reflect the current state of the system.
- **Conciseness.** Say what needs to be said and stop.
- **Audience awareness.** Write for the reader, not for yourself.
- **Maintainability.** Documentation that is not maintained becomes harmful.

## Required Documentation

Every project must have:

- **README.md** — what it is, how to set it up, how to run it.
- **API documentation** — endpoints, parameters, responses, errors.
- **Architecture overview** — how the system is structured and why.
- **Decision records** — significant technical decisions and their rationale.
- **Changelog** — what changed in each release.

## Writing Guidelines

- Use clear, simple language.
- Use headings to organize content.
- Use bullet lists for sequences and enumerations.
- Use tables for structured data.
- Use code blocks for commands, code, and configuration.
- Include examples where they help understanding.

## Formatting

- Use Markdown for all documentation.
- Use consistent heading levels (H1 for title, H2 for sections).
- Use fenced code blocks with language identifiers.
- Keep lines under 100 characters where practical.

## Maintenance

- Update documentation when the code it describes changes.
- Remove outdated documentation rather than leaving it to confuse.
- Review documentation during code review.
- Date-stamp decision records.

## API Documentation

- Document every public endpoint.
- Include request method, path, parameters, body, and response.
- Include error responses and status codes.
- Include example requests and responses.
- Note authentication requirements.

## Decision Records

- Write a decision record for every significant technical choice.
- Include context, options, decision, and consequences.
- Use the template at `templates/decision-record.md`.
- Store in `knowledge/decisions/`.
