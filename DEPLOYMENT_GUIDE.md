# 🚀 StudyNotion Website Deployment Guide

## 📋 Prerequisites
- GitHub account
- Vercel account (free)
- Railway account (free tier available)
- MongoDB Atlas account (free tier available)

## 🌐 Frontend Deployment (Vercel)

### Step 1: Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit for deployment"
git branch -M main
git remote add origin https://github.com/yourusername/studynotion.git
git push -u origin main
```

### Step 2: Deploy to Vercel
1. Go to [vercel.com](https://vercel.com)
2. Sign up/Login with GitHub
3. Click "New Project"
4. Import your GitHub repository
5. Configure build settings:
   - Framework Preset: Create React App
   - Build Command: `npm run build`
   - Output Directory: `build`
   - Install Command: `npm install`
6. Add environment variable:
   - `REACT_APP_BASE_URL` = Your backend URL (e.g., `https://your-app.railway.app/api/v1`)
7. Click "Deploy"

## 🔧 Backend Deployment (Railway)

### Step 1: Prepare Backend
1. Go to [railway.app](https://railway.app)
2. Sign up/Login with GitHub
3. Click "New Project"
4. Choose "Deploy from GitHub repo"
5. Select your repository
6. Set root directory to `/server`

### Step 2: Configure Environment Variables
Add these environment variables in Railway dashboard:

```
PORT=4000
MONGODB_URL=mongodb+srv://username:password@cluster.mongodb.net/studynotion
JWT_SECRET=your-super-secret-jwt-key-here
CLOUD_NAME=your-cloudinary-cloud-name
API_KEY=your-cloudinary-api-key
API_SECRET=your-cloudinary-api-secret
FOLDER_NAME=studynotion
RAZORPAY_KEY=your-razorpay-key
RAZORPAY_SECRET=your-razorpay-secret
MAIL_HOST=smtp.gmail.com
MAIL_USER=your-email@gmail.com
MAIL_PASS=your-app-password
```

### Step 3: Deploy
1. Railway will automatically detect it's a Node.js app
2. It will run `npm install` and `npm start`
3. Wait for deployment to complete
4. Copy the generated URL (e.g., `https://your-app.railway.app`)

## 🗄️ Database Setup (MongoDB Atlas)

### Step 1: Create MongoDB Atlas Cluster
1. Go to [mongodb.com/cloud/atlas](https://mongodb.com/cloud/atlas)
2. Create free account
3. Create new cluster (free tier)
4. Set up database access (username/password)
5. Set up network access (allow all IPs: 0.0.0.0/0)
6. Get connection string

### Step 2: Update Environment Variables
Replace `MONGODB_URL` in Railway with your Atlas connection string:
```
mongodb+srv://username:password@cluster.mongodb.net/studynotion
```

## 🔗 Update Frontend API URL

After backend deployment, update the frontend environment variable in Vercel:
1. Go to Vercel dashboard
2. Select your project
3. Go to Settings → Environment Variables
4. Update `REACT_APP_BASE_URL` with your Railway backend URL
5. Redeploy

## ✅ Final Steps

1. **Test your deployed website**
2. **Update domain names** (optional)
3. **Set up custom domains** (optional)
4. **Monitor performance** in Vercel/Railway dashboards

## 🆘 Troubleshooting

### Common Issues:
- **CORS errors**: Ensure backend CORS is configured for your frontend domain
- **Database connection**: Check MongoDB Atlas network access
- **Environment variables**: Verify all variables are set correctly
- **Build errors**: Check build logs in deployment platform

### Support:
- Vercel: [vercel.com/docs](https://vercel.com/docs)
- Railway: [docs.railway.app](https://docs.railway.app)
- MongoDB Atlas: [docs.atlas.mongodb.com](https://docs.atlas.mongodb.com)

## 🎉 Congratulations!
Your StudyNotion website is now deployed and accessible worldwide! 