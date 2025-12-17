#!/bin/bash

echo "Setting up POS Inventory System..."

# Backend setup
echo "Setting up backend..."
cd backend
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cp .env.example .env
echo "Backend setup complete. Please configure your .env file."

# Frontend setup
echo "Setting up frontend..."
cd ../frontend
npm install
cp .env.example .env.local
echo "Frontend setup complete."

echo "Setup complete! Please configure your environment files and create the database."
