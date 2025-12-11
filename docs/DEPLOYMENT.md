# Firebase Hosting Deployment Guide

## Overview

This guide covers deploying your Flutter web application to Firebase Hosting. Since you have the Blaze plan, you have access to all Firebase features without free tier limitations.

## Prerequisites

- Google account with Firebase Blaze plan access
- Node.js and npm installed
- Flutter SDK installed

## 📋 Deployment Steps

### Step 1: Install Firebase CLI

Choose one of the following methods:

**Using npm (recommended):**
```bash
npm install -g firebase-tools
```

**Using curl:**
```bash
curl -sL https://firebase.tools | bash
```

### Step 2: Login to Firebase

```bash
firebase login
```

This will open your browser to authenticate with your Google account.

### Step 3: Build Your Flutter Web App

```bash
flutter build web --release
```

This creates optimized production files in `build/web/`

### Step 4: Initialize Firebase in Your Project

From your project root directory:

```bash
firebase init hosting
```

**Answer the prompts as follows:**

- **Select a Firebase project**: Choose your existing company project or create a new one
- **What do you want to use as your public directory?**: `build/web`
- **Configure as a single-page app (rewrite all urls to /index.html)?**: `Yes` ⚠️ **Important for Flutter Router**
- **Set up automatic builds and deploys with GitHub?**: `No` (unless you want CI/CD)
- **File build/web/index.html already exists. Overwrite?**: `No` ⚠️ **Keep your Flutter-generated file**

### Step 5: Deploy to Firebase

```bash
firebase deploy --only hosting
```

### Step 6: Access Your App

After deployment completes, you'll see output like:

```
✔  Deploy complete!

Project Console: https://console.firebase.google.com/project/YOUR-PROJECT/overview
Hosting URL: https://YOUR-PROJECT.firebaseapp.com
```

Your app is now live at the provided Hosting URL!

## 🔧 Custom Domain Setup (Optional)

If you want to use a custom domain (e.g., `unlock-orders.yourcompany.com`):

1. Go to [Firebase Console](https://console.firebase.google.com) → Your Project → Hosting
2. Click "Add custom domain"
3. Enter your domain name
4. Follow the DNS verification steps provided by Firebase
5. Add the DNS records to your domain registrar
6. Wait for SSL certificate provisioning (automatic, takes ~24 hours)

Firebase provides free SSL certificates automatically for all domains.

## 📁 Files Created After Initialization

After running `firebase init`, the following files will be created:

- **`firebase.json`** - Firebase hosting configuration
- **`.firebaserc`** - Project aliases and settings
- **`.firebase/`** (directory) - Firebase cache (add to `.gitignore`)

## 🚀 Future Deployments

For subsequent updates, follow these two simple steps:

```bash
# 1. Build the latest version
flutter build web --release

# 2. Deploy to Firebase
firebase deploy --only hosting
```

## 💡 Advanced Commands

### Preview Before Deploying

Test your deployment on a temporary preview channel:

```bash
firebase hosting:channel:deploy preview
```

### Deploy to a Specific Channel

```bash
firebase hosting:channel:deploy CHANNEL_NAME
```

### List All Hosting Sites

```bash
firebase hosting:sites:list
```

### View Deployment History

Visit the Firebase Console → Hosting → Release history

### Rollback to Previous Version

1. Go to Firebase Console → Hosting → Release history
2. Click the three dots next to the version you want to restore
3. Click "Rollback"

## 🎯 Best Practices

1. **Always build in release mode** for production deployments
2. **Test locally** before deploying: `flutter run -d chrome`
3. **Use preview channels** for testing major changes
4. **Keep `firebase.json`** in version control
5. **Add `.firebase/` to `.gitignore`**
6. **Document your deployment process** for team members

## 📊 Monitoring & Analytics

### View Traffic and Performance

1. Go to Firebase Console → Hosting
2. View metrics like:
   - Bandwidth usage
   - Request count
   - Error rates
   - Response times

### Enable Firebase Analytics (Optional)

Add to your `web/index.html` if you want detailed analytics:

```html
<!-- Firebase Analytics -->
<script src="https://www.gstatic.com/firebasejs/10.0.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/10.0.0/firebase-analytics.js"></script>
```

## 💰 Cost Considerations

With the **Blaze Plan**, you pay only for what you use:

- **Storage**: $0.026/GB/month
- **Bandwidth**: $0.15/GB
- **SSL certificates**: Free
- **Custom domains**: Free

For a typical business app, costs are usually minimal (< $10/month) unless you have very high traffic.

## 🐛 Troubleshooting

### Issue: "Command not found: firebase"

**Solution**: Ensure Firebase CLI is installed globally and in your PATH.

### Issue: Build fails with "web not found"

**Solution**: Ensure Flutter web support is enabled:
```bash
flutter config --enable-web
```

### Issue: Routes return 404 on refresh

**Solution**: Ensure you answered "Yes" to single-page app configuration during `firebase init`.

### Issue: Assets not loading

**Solution**: Check that `build/web` is set as your public directory in `firebase.json`.

## 📞 Support

- [Firebase Hosting Documentation](https://firebase.google.com/docs/hosting)
- [Flutter Web Deployment](https://docs.flutter.dev/deployment/web)
- [Firebase Support](https://firebase.google.com/support)

## 🔄 Quick Reference

```bash
# One-time setup
npm install -g firebase-tools
firebase login
firebase init hosting

# Every deployment
flutter build web --release
firebase deploy --only hosting

# Preview deployment
firebase hosting:channel:deploy preview

# Manage deployments
firebase hosting:sites:list
```

---

**Last Updated**: December 11, 2025
