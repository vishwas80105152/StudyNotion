#!/bin/bash

echo "🚀 StudyNotion Auto-Deployment Script"
echo "====================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "package.json" ] || [ ! -d "server" ]; then
    print_error "Please run this script from the project root directory"
    exit 1
fi

print_status "Starting automated deployment process..."

# Step 1: Build the frontend
print_status "Step 1: Building frontend for production..."
if npm run build; then
    print_success "Frontend built successfully!"
else
    print_error "Frontend build failed!"
    exit 1
fi

# Step 2: Check git status
print_status "Step 2: Checking git status..."
if git status --porcelain | grep -q .; then
    print_warning "You have uncommitted changes. Committing them now..."
    git add .
    git commit -m "Auto-commit before deployment"
    print_success "Changes committed!"
else
    print_success "No uncommitted changes found!"
fi

# Step 3: Push to GitHub
print_status "Step 3: Pushing to GitHub..."
if git push origin main; then
    print_success "Code pushed to GitHub successfully!"
else
    print_error "Failed to push to GitHub!"
    exit 1
fi

echo ""
echo "🎉 DEPLOYMENT READY! 🎉"
echo "========================"
echo ""
echo "✅ Your code is now on GitHub and ready for deployment!"
echo ""
echo "🌐 NEXT STEPS - Deploy Your Website:"
echo ""
echo "1️⃣ FRONTEND (Vercel):"
echo "   📱 Go to: https://vercel.com/new"
echo "   🔗 Import: https://github.com/vishwas80105152/StudyNotion"
echo "   ⚙️  Settings:"
echo "      - Framework: Create React App"
echo "      - Build Command: npm run build"
echo "      - Output Directory: build"
echo "   🚀 Click Deploy!"
echo ""
echo "2️⃣ BACKEND (Railway):"
echo "   🚂 Go to: https://railway.app/new"
echo "   🔗 Import: https://github.com/vishwas80105152/StudyNotion"
echo "   📁 Select: server folder"
echo "   ⚙️  Add environment variables (see .env file)"
echo "   🚀 Click Deploy!"
echo ""
echo "3️⃣ UPDATE FRONTEND:"
echo "   🔄 After backend deploys, update REACT_APP_BASE_URL in Vercel"
echo "   📝 Use your Railway backend URL + /api/v1"
echo ""
echo "💡 TIP: Both platforms have free tiers and will deploy automatically!"
echo ""
echo "🎯 Your website will be live in minutes!"
echo ""
echo "Need help? Check the DEPLOYMENT_GUIDE.md file for detailed steps." 