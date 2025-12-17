# Contributing to POS Inventory System

Thank you for contributing to our project! This guide will help you get started.

## 📋 Table of Contents
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Coding Standards](#coding-standards)
- [Git Workflow](#git-workflow)
- [Testing Requirements](#testing-requirements)
- [Pull Request Guidelines](#pull-request-guidelines)
- [Code Review Process](#code-review-process)

---

## 🚀 Getting Started

### Prerequisites
Before you begin, ensure you have installed:
- **Node.js** 18.x or higher
- **Python** 3.10 or higher
- **PostgreSQL** 14.x or higher
- **Git** latest version

### First Time Setup

#### 1. Accept GitHub Invitation
- Check your email for the repository invitation
- Click the invitation link and accept

#### 2. Clone the Repository
```bash
# Clone the repository to your local machine
git clone https://github.com/YOUR-USERNAME/pos-inventory-system.git

# Navigate into the project directory
cd pos-inventory-system
```

#### 3. Verify Repository Structure
You should see:
```
pos-inventory-system/
├── frontend/
├── backend/
├── docs/
├── tests/
├── .github/
├── scripts/
├── README.md
└── CONTRIBUTING.md
```

---

## 🛠️ Development Setup

### Backend Setup (Django)
```bash
# Navigate to backend directory
cd backend

# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Create your .env file
cp .env.example .env

# Edit .env with your settings
# Use your preferred text editor:
nano .env
# or
code .env

# Create PostgreSQL database
# Open PostgreSQL:
psql -U postgres

# In psql, run:
CREATE DATABASE pos_inventory_db;
\q

# Run migrations
python manage.py makemigrations
python manage.py migrate

# Create a superuser account (for admin access)
python manage.py createsuperuser
# Follow the prompts to set username, email, and password

# Start the development server
python manage.py runserver
```

Your backend should now be running at: **http://localhost:8000**

Test it by visiting:
- API Root: http://localhost:8000/api/
- Admin Panel: http://localhost:8000/admin/

### Frontend Setup (Next.js)
```bash
# Open a NEW terminal window/tab
# Navigate to frontend directory
cd pos-inventory-system/frontend

# Install dependencies
npm install

# Create your .env.local file
cp .env.example .env.local

# The default settings should work, but verify:
# NEXT_PUBLIC_API_URL=http://localhost:8000/api

# Start the development server
npm run dev
```

Your frontend should now be running at: **http://localhost:3000**

### Verify Everything Works

1. ✅ Backend running on http://localhost:8000
2. ✅ Frontend running on http://localhost:3000
3. ✅ Can access Django admin at http://localhost:8000/admin
4. ✅ Can log in with your superuser credentials

---

## 📝 Coding Standards

### Python/Django Backend

#### Style Guide
- Follow **PEP 8** style guide
- Use **4 spaces** for indentation (not tabs)
- Maximum line length: **88 characters** (Black default)
- Use **snake_case** for variables and functions
- Use **PascalCase** for class names

#### Formatting Tools
```bash
# Format your code with Black
cd backend
black .

# Check for style issues with Flake8
flake8

# Type checking (if using type hints)
mypy .
```

#### Documentation
- Write docstrings for all functions, classes, and modules
- Use Google or NumPy docstring format

Example:
```python
def calculate_total(items, discount=0):
    """
    Calculate the total price of items with optional discount.
    
    Args:
        items (list): List of item dictionaries with 'price' key
        discount (float, optional): Discount percentage. Defaults to 0.
    
    Returns:
        float: Total price after discount
    """
    subtotal = sum(item['price'] for item in items)
    return subtotal * (1 - discount / 100)
```

### JavaScript/TypeScript Frontend

#### Style Guide
- Follow project **ESLint** configuration
- Use **2 spaces** for indentation
- Use **camelCase** for variables and functions
- Use **PascalCase** for components and classes
- Always use **TypeScript types** - avoid `any`

#### Formatting Tools
```bash
# Format your code with Prettier
cd frontend
npm run format

# Check for linting issues
npm run lint

# Fix auto-fixable lint issues
npm run lint:fix
```

#### Component Structure
```typescript
// Good component example
interface ProductCardProps {
  id: string;
  name: string;
  price: number;
  onAddToCart: (id: string) => void;
}

export default function ProductCard({ 
  id, 
  name, 
  price, 
  onAddToCart 
}: ProductCardProps) {
  return (
    <div className="product-card">
      <h3>{name}</h3>
      <p>${price.toFixed(2)}</p>
      <button onClick={() => onAddToCart(id)}>
        Add to Cart
      </button>
    </div>
  );
}
```

### General Best Practices

✅ **DO:**
- Write clear, self-documenting code
- Use meaningful variable names
- Keep functions small and focused (single responsibility)
- Add comments for complex logic
- Write tests for your code
- Keep commits atomic (one logical change per commit)

❌ **DON'T:**
- Commit commented-out code
- Leave console.log() or print() statements
- Commit .env files or secrets
- Push directly to main branch
- Ignore linter warnings

---

## 🔄 Git Workflow

### Step 1: Update Your Local Main Branch

Before starting new work, always sync with the latest code:
```bash
# Switch to main branch
git checkout main

# Pull latest changes
git pull origin main
```

### Step 2: Create a Feature Branch

**Branch Naming Convention:**
- `feature/feature-name` - New features
- `fix/bug-description` - Bug fixes
- `docs/update-description` - Documentation
- `test/test-description` - Tests
- `refactor/what-changed` - Code refactoring

**Examples:**
- `feature/product-crud`
- `fix/cart-total-calculation`
- `docs/api-endpoints`
- `test/sales-model`
```bash
# Create and switch to a new branch
git checkout -b feature/your-feature-name

# Example:
git checkout -b feature/inventory-management
```

### Step 3: Make Your Changes

1. Write your code
2. Test your changes locally
3. Ensure code follows style guidelines
4. Run linters and formatters
```bash
# Backend
cd backend
black .
flake8
pytest

# Frontend
cd frontend
npm run format
npm run lint
npm test
```

### Step 4: Commit Your Changes

**Commit Message Convention:**
```
Type: Brief description (50 chars or less)

More detailed explanation if needed (wrap at 72 chars).
Explain what and why, not how.

- Bullet points are okay
- Use present tense: "Add feature" not "Added feature"
```

**Types:**
- `Add:` - New features or functionality
- `Fix:` - Bug fixes
- `Update:` - Changes to existing features
- `Remove:` - Removing features or files
- `Docs:` - Documentation only changes
- `Style:` - Formatting, missing semicolons, etc. (no code change)
- `Refactor:` - Code restructuring without changing functionality
- `Test:` - Adding or updating tests
- `Chore:` - Maintenance tasks, dependency updates

**Examples:**
```bash
# Stage your changes
git add .

# Commit with a clear message
git commit -m "Add: Product CRUD operations in backend

- Create Product model with all required fields
- Implement ProductViewSet with list, create, update, delete
- Add serializers for Product model
- Include unit tests for Product API endpoints"

# Or for simple changes:
git commit -m "Fix: Correct price calculation in cart total"
```

### Step 5: Push Your Branch
```bash
# Push your branch to GitHub
git push origin feature/your-feature-name

# If this is your first push on this branch, you might need:
git push -u origin feature/your-feature-name
```

### Step 6: Create a Pull Request

1. Go to the GitHub repository in your browser
2. You'll see a prompt: "Compare & pull request" - click it
3. Fill in the PR template:
   - **Title**: Clear, concise description
   - **Description**: 
     - What changes were made?
     - Why were these changes necessary?
     - Any issues this addresses? (Use `Closes #issue-number`)
     - Screenshots (for UI changes)
     - Testing steps
   - **Reviewers**: Select appropriate team member(s)
   - **Labels**: Add relevant labels (frontend, backend, bug, feature, etc.)
   - **Linked Issues**: Link related issues

4. Click "Create pull request"

**Example PR Description:**
```markdown
## Description
Implements the Product CRUD operations for the inventory management system.

## Changes Made
- Created Product model with fields: name, SKU, price, description, stock_level
- Implemented ProductViewSet with all CRUD operations
- Added product serializers
- Included comprehensive unit tests (95% coverage)

## Related Issues
Closes #12

## Testing Steps
1. Run backend server: `python manage.py runserver`
2. Access `/api/products/` endpoint
3. Test creating, reading, updating, and deleting products
4. Run tests: `pytest tests/test_products.py`

## Screenshots
[Add screenshots if UI changes]

## Checklist
- [x] Code follows style guidelines
- [x] Tests pass locally
- [x] Documentation updated
- [x] No merge conflicts
```

### Step 7: Address Review Feedback

When reviewers leave comments:

1. Read all feedback carefully
2. Make requested changes
3. Commit the changes:
```bash
git add .
git commit -m "Update: Address PR feedback - fix validation logic"
git push origin feature/your-feature-name
```

4. The PR will automatically update
5. Respond to comments (mark as resolved when done)

### Step 8: After Merge

Once your PR is approved and merged:
```bash
# Switch back to main
git checkout main

# Pull the latest changes (including your merged code)
git pull origin main

# Delete your feature branch locally (optional but recommended)
git branch -d feature/your-feature-name

# Delete remote branch (optional)
git push origin --delete feature/your-feature-name
```

---

## 🧪 Testing Requirements

### Backend Tests (Django)
```bash
cd backend

# Run all tests
pytest

# Run specific test file
pytest tests/test_products.py

# Run with coverage report
pytest --cov=. --cov-report=html

# Run specific test
pytest tests/test_products.py::TestProductAPI::test_create_product
```

### Frontend Tests (Next.js)
```bash
cd frontend

# Run all tests
npm test

# Run tests in watch mode (re-runs on file changes)
npm run test:watch

# Run with coverage
npm test -- --coverage

# Run specific test file
npm test -- ProductCard.test.tsx
```

### Writing Tests

#### Backend Example (Pytest)
```python
# tests/test_products.py
import pytest
from django.urls import reverse
from rest_framework import status
from rest_framework.test import APIClient

@pytest.mark.django_db
class TestProductAPI:
    def test_create_product(self):
        client = APIClient()
        data = {
            'name': 'Test Product',
            'sku': 'TEST-001',
            'price': 29.99
        }
        response = client.post(reverse('product-list'), data)
        assert response.status_code == status.HTTP_201_CREATED
        assert response.data['name'] == 'Test Product'
```

#### Frontend Example (Jest + React Testing Library)
```typescript
// components/ProductCard.test.tsx
import { render, screen, fireEvent } from '@testing-library/react';
import ProductCard from './ProductCard';

describe('ProductCard', () => {
  it('renders product information correctly', () => {
    render(
      <ProductCard 
        id="1"
        name="Test Product"
        price={29.99}
        onAddToCart={jest.fn()}
      />
    );
    
    expect(screen.getByText('Test Product')).toBeInTheDocument();
    expect(screen.getByText('$29.99')).toBeInTheDocument();
  });

  it('calls onAddToCart when button is clicked', () => {
    const mockAddToCart = jest.fn();
    render(
      <ProductCard 
        id="1"
        name="Test Product"
        price={29.99}
        onAddToCart={mockAddToCart}
      />
    );
    
    fireEvent.click(screen.getByText('Add to Cart'));
    expect(mockAddToCart).toHaveBeenCalledWith('1');
  });
});
```

### Test Coverage Goals
- **Minimum**: 60% overall coverage
- **Target**: 80%+ for critical business logic
- All new features must include tests
- Bug fixes should include regression tests

---

## 📋 Pull Request Guidelines

### Before Creating a PR

✅ **Checklist:**
- [ ] Code follows project style guidelines
- [ ] All tests pass locally
- [ ] New tests added for new features
- [ ] Documentation updated (if needed)
- [ ] No merge conflicts with main
- [ ] Commits are clean and well-organized
- [ ] .env files and secrets not committed
- [ ] No unnecessary console.log() or debug code

### PR Best Practices

**Size:**
- Keep PRs focused and reasonably sized (< 400 lines changed ideally)
- Large features should be broken into smaller PRs
- One logical feature/fix per PR

**Title:**
- Use same convention as commit messages
- Be clear and descriptive
- Example: `Add: User authentication with JWT`

**Description:**
- Explain **what** changed and **why**
- Include **testing steps**
- Link related issues
- Add screenshots for UI changes
- Mention any breaking changes

**Reviewers:**
- Request review from:
  - Your team lead
  - Someone familiar with the affected code
  - At least 1 reviewer required

**Labels:**
Add appropriate labels:
- `frontend` / `backend` / `full-stack`
- `feature` / `bug` / `enhancement`
- `priority: high` / `priority: medium` / `priority: low`
- `needs-testing`

---

## 👀 Code Review Process

### For Authors

**Responding to Reviews:**
1. Thank reviewers for their time
2. Address all comments (agree or discuss)
3. Make requested changes
4. Push updates to your branch
5. Re-request review if needed

**Example Response:**
```markdown
> Should we add validation for negative prices?

Good catch! Added validation in commit abc123. Prices must now be > 0, and I added a test for this case.
```

### For Reviewers

**What to Look For:**
- ✅ Code correctness and logic
- ✅ Follows style guidelines
- ✅ Tests are adequate
- ✅ No security issues
- ✅ Performance considerations
- ✅ Clear variable/function names
- ✅ Adequate documentation

**How to Review:**
```markdown
**Looks Good:**
- ✅ Clean implementation of the feature
- ✅ Tests cover the main cases
- ✅ Follows our coding standards

**Suggestions:**
1. Line 45: Consider extracting this logic into a separate function for reusability
2. Line 67: Add error handling for the API call
3. tests/test_cart.py: Add a test case for empty cart scenario

**Minor Issues:**
- Line 23: Typo in comment: "recieve" → "receive"
```

### Review Timeline
- Respond to reviews within **24 hours**
- Simple reviews should be done same day
- Complex reviews may take 1-2 days
- Tag urgent reviews with `priority: high`

### Approval
- At least **1 approval** required to merge
- All comments must be addressed or discussed
- All CI checks must pass
- Project Manager or Lead Developer merges

---

## 🆘 Getting Help

### Common Issues

**Problem: Can't push to repository**
```bash
# Ensure you're on your feature branch, not main
git branch  # Check current branch

# If on main, create a feature branch
git checkout -b feature/your-feature
```

**Problem: Merge conflicts**
```bash
# Update main first
git checkout main
git pull origin main

# Go back to your branch
git checkout feature/your-feature

# Merge main into your branch
git merge main

# Resolve conflicts in your editor
# After resolving, commit the merge
git add .
git commit -m "Merge: Resolve conflicts with main"
git push origin feature/your-feature
```

**Problem: Accidentally committed to main**
```bash
# Create a new branch with your changes
git branch feature/your-feature

# Reset main to match remote
git reset --hard origin/main

# Switch to your feature branch
git checkout feature/your-feature

# Push your feature branch
git push origin feature/your-feature
```

### Where to Ask

- **General questions**: Team chat channel
- **Code-specific questions**: GitHub PR comments
- **Bugs**: Create a GitHub issue
- **Urgent issues**: Contact Project Manager

---

## 📚 Additional Resources

- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [Django Documentation](https://docs.djangoproject.com/)
- [Next.js Documentation](https://nextjs.org/docs)
- [REST API Best Practices](https://restfulapi.net/)
- [Writing Good Commit Messages](https://chris.beams.io/posts/git-commit/)

---

## 🎉 Thank You!

Your contributions make this project better! If you have suggestions for improving this guide, please create a PR or issue.

**Happy coding!** 🚀
