#!/bin/bash

echo "🚀 StudyNotion Deployment Script"
echo "================================"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit for deployment"
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "🔗 Please add your GitHub remote origin:"
    echo "   git remote add origin https://github.com/yourusername/studynotion.git"
    echo "   git push -u origin main"
else
    echo "✅ Remote origin already configured"
    echo "📤 Pushing to GitHub..."
    git add .
    git commit -m "Update for deployment"
    git push
fi

echo ""
echo "📋 Next Steps:"
echo "1. Push your code to GitHub (if not done already)"
echo "2. Deploy frontend to Vercel: https://vercel.com"
echo "3. Deploy backend to Railway: https://railway.app"
echo "4. Set up MongoDB Atlas: https://mongodb.com/cloud/atlas"
echo ""
echo "📖 See DEPLOYMENT_GUIDE.md for detailed instructions"
echo ""
echo "🎉 Happy deploying!" 