# DNS Configuration for westleyresource.com

## Current Issue
Firebase is trying to verify your domain but getting a 404 error from IP `198.54.120.176` (your old cPanel server).

## Solution: Update DNS Records

### Step 1: Remove Old cPanel Records
Go to your domain registrar (GoDaddy/Namecheap/etc.) and **delete or update**:

```
Type: A
Name: @
Value: 198.54.120.176  ← DELETE THIS
```

### Step 2: Add Firebase A Records

Add these **two** A records (Firebase requires both):

```
Type: A
Name: @
Value: 151.101.1.195
TTL: 3600

Type: A
Name: @  
Value: 151.101.65.195
TTL: 3600
```

### Step 3: Add Firebase TXT Record (for verification)

Firebase Console will show you a TXT record like:

```
Type: TXT
Name: @
Value: firebase-hosting-site=westleyresource-5131d
TTL: 3600
```

### Step 4: Wait for DNS Propagation

- **Minimum**: 10-15 minutes
- **Maximum**: 24-48 hours
- **Check status**: https://dnschecker.org

### Step 5: Verify in Firebase Console

1. Go to: https://console.firebase.google.com/project/westleyresource-5131d/hosting
2. Click "Add custom domain"
3. Enter: `westleyresource.com`
4. Click "Verify"

## Alternative: Start with WWW subdomain

If you want faster verification:

```
Type: CNAME
Name: www
Value: westleyresource-5131d.web.app
TTL: 3600
```

This usually verifies within 5-10 minutes.

## Current Working URL

Your site is already live at:
- https://westleyresource-5131d.web.app

You can use this URL for your Google Startup Credits application while DNS propagates.
