# 🛒 POS Inventory System

**Inventory & Point-of-Sale Management System**  
Next.js + Django + PostgreSQL

## 📋 Project Overview

A comprehensive Point-of-Sale and Inventory Management System designed for retail stores. Built with modern technologies for optimal performance and scalability.

## 👥 Team Members

| Name | Role | GitHub Username |
|------|------|----------------|
| Tobe Ofili  | Product Manager | @username |
| Kene Obiekwe  | Project Manager | @username |
| Alex-Ojukwu Nduka | Lead Software Architect | @username |
| Yasir Tella | Lead UX Designer | @username |
| Oluwademilade Somide | Lead Software Developer | @username |
| Oluwatimilehin Ilesanmi | Software QA Lead | @username |
| Alex-Ojukwu Nduka | Frontend Developer | @username |
| Oluwademilade Somide, Nmesoma Okonkwo  | Backend Developer | @username |
| Osara Oseiga Joseph | UX Designer | @username |
| Oluwatimilehin Ilesanmi | QA Tester | @username |

### Team Distribution
- **UX Design Team**: [Osara Oseiga Joseph, Yasir Tella]
- **Development Team**: [Alex-Ojukwu Nduka, Oluwademilade Somide, Nmesoma Okonkwo, Akpe Omokafe]
- **Testing & QA Team**: [Oluwatimilehin Ilesanmi, Oluwademilade Somide, Kene Obiekwe, Tobe Ofili]

## 🏗️ Architecture

**Architecture Type**: Modular Monolith

**Why Modular Monolith?**
- Clear domain boundaries (Inventory, Sales, Suppliers, Reports)
- Easier deployment and maintenance for our team size
- Better organization than pure monolith
- Can evolve to microservices if needed

## 🛠️ Tech Stack

### Frontend
- **Framework**: Next.js 14 (App Router)
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **State Management**: Zustand
- **Data Fetching**: TanStack Query (React Query)
- **Forms**: React Hook Form + Zod
- **UI Components**: Custom components with Lucide icons
- **Charts**: Recharts

### Backend
- **Framework**: Django 5.0
- **API**: Django REST Framework
- **Authentication**: JWT (Simple JWT)
- **Database ORM**: Django ORM
- **CORS**: django-cors-headers

### Database
- **Primary DB**: PostgreSQL 14+

### DevOps
- **Version Control**: Git + GitHub
- **CI/CD**: GitHub Actions
- **Testing**: Jest (Frontend), Pytest (Backend)

## 📁 Project Structure
```
pos-inventory-system/
├── frontend/                 # Next.js application
│   ├── public/              # Static assets
│   ├── src/
│   │   ├── app/            # Next.js App Router pages
│   │   ├── components/     # React components
│   │   │   ├── common/    # Shared components
│   │   │   ├── pos/       # POS-specific components
│   │   │   ├── inventory/ # Inventory components
│   │   │   ├── reports/   # Report components
│   │   │   └── auth/      # Authentication components
│   │   ├── lib/           # Utilities
│   │   │   ├── api/       # API client functions
│   │   │   ├── utils/     # Helper functions
│   │   │   └── hooks/     # Custom React hooks
│   │   ├── contexts/      # React contexts
│   │   └── types/         # TypeScript types
│   ├── package.json
│   └── tsconfig.json
│
├── backend/                 # Django application
│   ├── config/             # Django project settings
│   ├── accounts/           # User & employee management
│   ├── products/           # Product management
│   ├── inventory/          # Stock management
│   ├── sales/              # POS & sales transactions
│   ├── suppliers/          # Supplier & purchase orders
│   ├── reports/            # Reporting & analytics
│   ├── manage.py
│   └── requirements.txt
│
├── docs/                   # Documentation
│   ├── ddd/               # Domain-Driven Design
│   ├── architecture/      # Architecture decisions
│   ├── ux-design/         # Wireframes & designs
│   └── api/               # API documentation
│
├── tests/                  # Test suites
│   ├── frontend/          # Frontend tests
│   ├── backend/           # Backend tests
│   └── e2e/               # End-to-end tests
│
├── .github/
│   └── workflows/         # CI/CD pipelines
│
├── scripts/               # Utility scripts
├── .gitignore
├── README.md
└── LICENSE
```

## 🚀 Getting Started

### Prerequisites

- **Node.js**: 18.x or higher
- **Python**: 3.10 or higher
- **PostgreSQL**: 14.x or higher
- **Git**: Latest version

### Installation

#### 1. Clone the Repository
```bash
git clone https://github.com/YOUR-USERNAME/pos-inventory-system.git
cd pos-inventory-system
```

#### 2. Set Up Backend (Django)
```bash
# Navigate to backend
cd backend

# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Create .env file
cp .env.example .env
# Edit .env with your database credentials

# Create PostgreSQL database
# Using psql:
psql -U postgres
CREATE DATABASE pos_inventory_db;
\q

# Run migrations
python manage.py makemigrations
python manage.py migrate

# Create superuser
python manage.py createsuperuser

# Run development server
python manage.py runserver
```

Backend will be available at: `http://localhost:8000`  
Admin panel: `http://localhost:8000/admin`

#### 3. Set Up Frontend (Next.js)
```bash
# Open new terminal, navigate to frontend
cd frontend

# Install dependencies
npm install

# Create .env.local file
cp .env.example .env.local
# Verify NEXT_PUBLIC_API_URL=http://localhost:8000/api

# Run development server
npm run dev
```

Frontend will be available at: `http://localhost:3000`

### Running Tests

#### Frontend Tests
```bash
cd frontend
npm test
```

#### Backend Tests
```bash
cd backend
source venv/bin/activate  # or venv\Scripts\activate on Windows
pytest
```

## 🎯 Core Features (MVP)

- ✅ User Authentication & Role-Based Access Control
- ✅ Product Management (CRUD operations)
- ✅ Inventory Tracking & Stock Alerts
- ✅ Point-of-Sale Checkout Interface
- ✅ Sales Transaction Processing
- ✅ Receipt Generation
- ✅ Returns & Refunds Management
- ✅ Supplier Management
- ✅ Purchase Order Processing
- ✅ Employee Management
- ✅ Sales Reports & Analytics
- ✅ Inventory Reports
- ✅ Low Stock Alerts

## 📚 API Documentation

API documentation will be available at: `http://localhost:8000/api/docs/`

Key endpoints:
- `/api/auth/` - Authentication endpoints
- `/api/products/` - Product management
- `/api/inventory/` - Inventory operations
- `/api/sales/` - Sales transactions
- `/api/suppliers/` - Supplier management
- `/api/reports/` - Reporting endpoints

## 🔄 Development Workflow

### Branch Naming Convention
- `feature/feature-name` - New features
- `fix/bug-description` - Bug fixes
- `docs/documentation-update` - Documentation
- `test/test-description` - Test additions

### Commit Message Convention
- `Add: description` - New features
- `Fix: description` - Bug fixes
- `Update: description` - Updates to existing features
- `Docs: description` - Documentation changes
- `Test: description` - Test-related changes
- `Refactor: description` - Code refactoring

### Pull Request Process
1. Create a feature branch from `main`
2. Make your changes
3. Write/update tests
4. Ensure all tests pass
5. Push to GitHub
6. Create Pull Request
7. Request review from team lead
8. Address feedback
9. Merge after approval

## 🧪 Testing Strategy

- **Unit Tests**: Test individual functions and components
- **Integration Tests**: Test API endpoints and database operations
- **E2E Tests**: Test complete user workflows
- **Code Coverage Target**: 60%+

## 📊 Project Management

- **Task Tracking**: GitHub Issues
- **Project Board**: [Link to GitHub Projects board]
- **Documentation**: `/docs` folder
- **Communication**: [WhatsApp Github]

## 📅 Development Timeline

- **Week 1-2**: Planning, DDD, Architecture, Setup
- **Week 3**: Database schema, API design, UI wireframes
- **Week 4-5**: Core feature development
- **Week 6**: Feature completion & integration
- **Week 7**: Testing, bug fixes, QA
- **Week 8**: Final documentation, presentation prep

## 🤝 Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and development process.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For issues or questions:
- Create an issue in the GitHub repository
- Contact the Project Manager: [kene.obiekwe@pau.edu.ng]

---

**Last Updated**: December 2025
