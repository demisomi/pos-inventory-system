# Contributing to POS Inventory System

Thank you for contributing to our project! Please follow these guidelines.

## Development Setup

See README.md for setup instructions.

## Coding Standards

### Python/Django
- Follow PEP 8 style guide
- Use Black for code formatting: `black .`
- Use Flake8 for linting: `flake8`
- Write docstrings for functions and classes
- Maximum line length: 88 characters (Black default)

### JavaScript/TypeScript
- Follow ESLint rules configured in the project
- Use Prettier for formatting: `npm run format`
- Use TypeScript types, avoid `any`
- Use meaningful variable names

## Git Workflow

1. **Create a branch**
```bash
   git checkout -b feature/your-feature-name
```

2. **Make changes and commit**
```bash
   git add .
   git commit -m "Add: clear description of changes"
```

3. **Push to GitHub**
```bash
   git push origin feature/your-feature-name
```

4. **Create Pull Request**
   - Go to GitHub repository
   - Click "Pull requests" → "New pull request"
   - Select your branch
   - Fill in PR template
   - Request review

5. **Address feedback**
   - Make requested changes
   - Push updates to same branch
   - PR will update automatically

6. **Merge**
   - After approval, project manager will merge
   - Delete your branch after merge

## Testing Requirements

- Write tests for new features
- Ensure all existing tests pass
- Aim for 60%+ code coverage

### Running Tests

Frontend:
```bash
cd frontend
npm test
```

Backend:
```bash
cd backend
pytest
```

## Pull Request Guidelines

- Link related issues in PR description
- Provide clear description of changes
- Include screenshots for UI changes
- Ensure CI checks pass
- Request review from appropriate team member

## Code Review Process

- All PRs require at least one approval
- Address all comments before merging
- Keep PRs focused and reasonably sized
- Respond to reviews within 24 hours

## Questions?

Ask in the team communication channel or create an issue.
