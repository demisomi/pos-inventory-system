# 🚀 Quick Start Guide

New to the project? Follow these steps to get up and running in 30 minutes!

## ☑️ Step-by-Step Checklist

### 1. Accept Invitation
- [ ] Check email for GitHub repository invitation
- [ ] Click link and accept invitation

### 2. Clone Repository
```bash
git clone https://github.com/YOUR-USERNAME/pos-inventory-system.git
cd pos-inventory-system
```

### 3. Install Prerequisites
- [ ] Node.js 18+ installed: `node --version`
- [ ] Python 3.10+ installed: `python --version`
- [ ] PostgreSQL 14+ installed and running
- [ ] Git installed: `git --version`

### 4. Backend Setup
```bash
cd backend
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows
pip install -r requirements.txt
cp .env.example .env
# Edit .env with your database credentials
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```
- [ ] Backend running at http://localhost:8000

### 5. Frontend Setup
```bash
# New terminal
cd frontend
npm install
cp .env.example .env.local
npm run dev
```
- [ ] Frontend running at http://localhost:3000

### 6. Test Your Setup
- [ ] Visit http://localhost:3000
- [ ] Visit http://localhost:8000/admin
- [ ] Log in with your superuser credentials

### 7. Make Your First Contribution
```bash
git checkout -b feature/your-name-setup-test
# Make a small change (e.g., update a comment)
git add .
git commit -m "Test: Verify development environment setup"
git push origin feature/your-name-setup-test
# Create a PR on GitHub
```

## 🎯 Common Setup Issues

### Backend Issues

**Issue: Can't create database**
```bash
# Make sure PostgreSQL is running
# On macOS with Homebrew:
brew services start postgresql

# On Windows, check Services app for PostgreSQL

# Then create database:
psql -U postgres
CREATE DATABASE pos_inventory_db;
\q
```

**Issue: ModuleNotFoundError**
```bash
# Make sure virtual environment is activated
source venv/bin/activate  # macOS/Linux
venv\Scripts\activate     # Windows

# Reinstall dependencies
pip install -r requirements.txt
```

**Issue: Migration errors**
```bash
# Delete database and start fresh
psql -U postgres
DROP DATABASE pos_inventory_db;
CREATE DATABASE pos_inventory_db;
\q

# Run migrations again
python manage.py migrate
```

### Frontend Issues

**Issue: npm install fails**
```bash
# Clear npm cache
npm cache clean --force

# Delete node_modules and package-lock.json
rm -rf node_modules package-lock.json

# Try again
npm install
```

**Issue: Port 3000 already in use**
```bash
# Find process using port 3000
# On macOS/Linux:
lsof -ti:3000 | xargs kill -9

# On Windows:
netstat -ano | findstr :3000
taskkill /PID <PID_NUMBER> /F

# Or run on different port:
PORT=3001 npm run dev
```

**Issue: Module not found errors**
```bash
# Make sure you're in the frontend directory
cd frontend

# Reinstall dependencies
rm -rf node_modules
npm install
```

## 📚 Next Steps

Once your setup is complete:

1. Read [CONTRIBUTING.md](CONTRIBUTING.md) for detailed workflow
2. Check the [Project Board](https://github.com/YOUR-USERNAME/pos-inventory-system/projects) for available tasks
3. Join the team communication channel
4. Attend the next team standup

## ✅ You're Ready!

Your development environment is set up! Start contributing by:
- Picking an issue from the backlog
- Creating a feature branch
- Making your changes
- Submitting a pull request

**Questions?** Ask in the team chat or create an issue on GitHub!

**Happy coding!** 🚀
