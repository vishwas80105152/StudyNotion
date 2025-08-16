# 🚀 DEPLOY YOUR WEBSITE NOW!

## ✅ **Step 1: Frontend Deployment (Vercel)**

**Click this link to deploy your frontend:**
👉 **[DEPLOY TO VERCEL](https://vercel.com/new/clone?repository-url=https://github.com/vishwas80105152/StudyNotion)**

**What to do:**
1. Click the link above
2. Sign in with GitHub
3. Select your StudyNotion repository
4. Configure build settings:
   - **Framework Preset**: Create React App
   - **Build Command**: `npm run build`
   - **Output Directory**: `build`
   - **Install Command**: `npm install`
5. Add environment variable:
   - **Name**: `REACT_APP_BASE_URL`
   - **Value**: `https://your-backend-url.railway.app/api/v1` (we'll get this in step 2)
6. Click **Deploy**

## 🔧 **Step 2: Backend Deployment (Railway)**

**Click this link to deploy your backend:**
👉 **[DEPLOY TO RAILWAY](https://railway.app/new)**

**What to do:**
1. Click the link above
2. Sign in with GitHub
3. Click **Deploy from GitHub repo**
4. Select your StudyNotion repository
5. Set **Root Directory** to: `/server`
6. Add these environment variables:

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

7. Click **Deploy**
8. Copy the generated URL (e.g., `https://your-app.railway.app`)

## 🗄️ **Step 3: Database Setup (MongoDB Atlas)**

**Click this link to set up your database:**
👉 **[MONGODB ATLAS](https://mongodb.com/cloud/atlas)**

**What to do:**
1. Create free account
2. Create new cluster (free tier)
3. Set up database access (username/password)
4. Set up network access (allow all IPs: 0.0.0.0/0)
5. Get connection string and update `MONGODB_URL` in Railway

## 🔗 **Step 4: Update Frontend API URL**

After backend deployment:
1. Go to Vercel dashboard
2. Select your project
3. Go to Settings → Environment Variables
4. Update `REACT_APP_BASE_URL` with your Railway backend URL
5. Redeploy

## 🎉 **CONGRATULATIONS!**

Your StudyNotion website will be live and accessible worldwide!

---
**Need help?** Check the detailed `DEPLOYMENT_GUIDE.md` file for troubleshooting. 