#!/bin/bash

# Install Python dependencies (Backend)
echo "🔧 Installing backend dependencies..."
cd backend
pip install -r requirements.txt
cd ..

# Install Node.js dependencies and build (Frontend)
echo "🔧 Installing frontend dependencies..."
cd frontend
npm install
npm run build
cd ..

cd backend
mkdir -p backend/static
cp -R frontend/dist/* backend/static/

echo "🚀 Build completed!"