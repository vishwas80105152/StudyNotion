# 🚀 DEPLOY YOUR WEBSITE IN 3 STEPS!

## ✅ **Step 1: Run Auto-Deploy Script**
```bash
./AUTO_DEPLOY.sh
```
This will:
- Build your frontend
- Push code to GitHub
- Show you exactly what to do next

## 🌐 **Step 2: Deploy Frontend (Vercel)**
1. **Click this link:** [https://vercel.com/new](https://vercel.com/new)
2. **Sign in with GitHub**
3. **Import your repository:** `vishwas80105152/StudyNotion`
4. **Configure:**
   - Framework: `Create React App`
   - Build Command: `npm run build`
   - Output Directory: `build`
5. **Click Deploy!** 🚀

## 🔧 **Step 3: Deploy Backend (Railway)**
1. **Click this link:** [https://railway.app/new](https://railway.app/new)
2. **Sign in with GitHub**
3. **Import your repository:** `vishwas80105152/StudyNotion`
4. **Select:** `server` folder
5. **Add environment variables** (copy from your `.env` file)
6. **Click Deploy!** 🚀

## 🔄 **Step 4: Connect Frontend to Backend**
1. **Copy your Railway backend URL**
2. **Go back to Vercel dashboard**
3. **Add environment variable:**
   - Name: `REACT_APP_BASE_URL`
   - Value: `https://your-railway-url.railway.app/api/v1`
4. **Redeploy frontend**

## 🎉 **DONE! Your website is live!**

---
## 💡 **Need Help?**
- Check `DEPLOYMENT_GUIDE.md` for detailed steps
- Run `./AUTO_DEPLOY.sh` to start over
- Both platforms have free tiers!

## 🚨 **Important Notes:**
- **Vercel:** Automatically deploys from GitHub
- **Railway:** Automatically deploys from GitHub
- **MongoDB:** You'll need to set up MongoDB Atlas (free tier available)
- **Environment Variables:** Copy from your local `.env` file 