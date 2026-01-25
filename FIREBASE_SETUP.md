# Firebase Hosting Setup Guide

## 🚀 Quick Start - Deploying to Firebase Hosting

Follow these steps to complete your migration from cPanel to Firebase Hosting on Google Cloud Platform.

---

## Step 1: Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click **"Add project"** or **"Create a project"**
3. Enter project name: `westleyresource`
4. (Optional) Enable Google Analytics
5. Click **"Create project"**

---

## Step 2: Login to Firebase CLI

Open your terminal and run:

```bash
firebase login
```

This will open a browser window for you to authenticate with your Google account.

---

## Step 3: Link Your Local Project to Firebase

In your project directory, run:

```bash
cd /Users/kishorekumar/CascadeProjects/westleyresource
firebase use --add
```

- Select the `westleyresource` project you just created
- Set an alias (e.g., `default`)

---

## Step 4: Test Local Deployment

Before setting up automatic deployment, test it manually:

```bash
firebase deploy --only hosting
```

This will deploy your website to Firebase. You'll get a URL like:
- `https://westleyresource.web.app`
- `https://westleyresource.firebaseapp.com`

Visit the URL to verify your site is working correctly.

---

## Step 5: Set Up GitHub Actions for Automatic Deployment

### 5.1 Generate Firebase Service Account

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Select your `westleyresource` project
3. Click the **gear icon** → **Project settings**
4. Go to the **"Service accounts"** tab
5. Click **"Generate new private key"**
6. Click **"Generate key"** - this downloads a JSON file
7. **Keep this file secure!** It contains sensitive credentials

### 5.2 Add Service Account to GitHub Secrets

1. Go to your GitHub repository: `https://github.com/KishoreKu/westleyresource`
2. Click **Settings** → **Secrets and variables** → **Actions**
3. Click **"New repository secret"**
4. Name: `FIREBASE_SERVICE_ACCOUNT`
5. Value: Copy and paste the **entire contents** of the JSON file you downloaded
6. Click **"Add secret"**

### 5.3 Verify GitHub Token (Already Available)

The workflow uses `GITHUB_TOKEN` which is automatically provided by GitHub Actions - no action needed!

---

## Step 6: Configure Custom Domain (Optional)

To use your custom domain `westleyresource.com`:

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Select your project → **Hosting**
3. Click **"Add custom domain"**
4. Enter: `westleyresource.com`
5. Firebase will provide DNS records (A and TXT records)
6. Add these records to your domain registrar's DNS settings
7. Wait for DNS propagation (can take up to 24 hours)
8. Firebase will automatically provision SSL certificates

**DNS Records Example:**
```
Type: A
Name: @
Value: 151.101.1.195, 151.101.65.195 (Firebase IPs)

Type: TXT
Name: @
Value: [verification code from Firebase]
```

---

## Step 7: Push to GitHub to Trigger Deployment

Once you've set up the `FIREBASE_SERVICE_ACCOUNT` secret:

```bash
git add .
git commit -m "Migrate to Firebase Hosting on GCP"
git push origin main
```

This will trigger the GitHub Actions workflow and automatically deploy your site to Firebase!

---

## 🎉 You're Done!

Your website will now automatically deploy to Firebase Hosting every time you push to the `main` branch.

### Benefits You Now Have:

✅ **Global CDN** - Fast loading worldwide  
✅ **Auto SSL** - Free HTTPS certificates  
✅ **Auto Scaling** - Handles traffic spikes automatically  
✅ **Version History** - Rollback to previous versions anytime  
✅ **Free Tier** - 10GB storage, 360MB/day transfer  
✅ **99.95% Uptime SLA**

---

## Useful Commands

```bash
# Deploy manually
firebase deploy --only hosting

# View deployment history
firebase hosting:channel:list

# Open Firebase console
firebase open hosting

# View live site
firebase open hosting:site

# Check Firebase project info
firebase projects:list
```

---

## Troubleshooting

### Issue: "Permission denied" during deployment

**Solution:** Make sure you're logged in:
```bash
firebase login --reauth
```

### Issue: GitHub Actions deployment fails

**Solution:** 
1. Verify `FIREBASE_SERVICE_ACCOUNT` secret is set correctly
2. Check that the JSON is valid (no extra spaces or characters)
3. Ensure the service account has "Firebase Hosting Admin" role

### Issue: Custom domain not working

**Solution:**
1. Verify DNS records are correct
2. Wait 24-48 hours for DNS propagation
3. Check domain status in Firebase Console

---

## Need Help?

- [Firebase Hosting Documentation](https://firebase.google.com/docs/hosting)
- [Firebase CLI Reference](https://firebase.google.com/docs/cli)
- [GitHub Actions for Firebase](https://github.com/FirebaseExtended/action-hosting-deploy)

---

**Note:** The lint warning about `FIREBASE_SERVICE_ACCOUNT` in the GitHub workflow is expected - it will be resolved once you add the secret to your GitHub repository.
