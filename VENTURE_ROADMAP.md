# Westley Venture Studio - Master Roadmap

## 🏢 The Portfolio

### 1. **Westley Resource** (westleyresource.com)
- **Industry**: AI-Powered Recruiting / HR Tech
- **Status**: 🟡 In Development
- **Tech Stack**: Astro (Frontend) + FastAPI (Backend) + Cloud Run
- **Revenue Model**: B2B SaaS ($99-$499/mo subscriptions)
- **Priority**: **HIGH** - This is your Google Startup Credits application flagship

### 2. **Gubbu.io** (gubbu.io)
- **Industry**: AI Travel Intelligence / Decision-as-a-Service
- **Status**: 🟢 Live (needs migration to Astro)
- **Tech Stack**: Vite → Astro (migration planned) + FastAPI + Cloud Run
- **Revenue Model**: Affiliate + Decision Briefs ($5-$9 per brief)
- **Priority**: **MEDIUM** - Revenue generator, but needs SEO optimization

### 3. **Westley Group** (westley-group.com)
- **Industry**: FinTech / Financial Advisory
- **Status**: 🔴 Not Started
- **Tech Stack**: Astro + FastAPI + Cloud Run + **Strict Compliance**
- **Revenue Model**: B2B SaaS / Advisory Fees
- **Priority**: **MEDIUM** - High value but requires regulatory compliance

### 4. **Westley Technologies** (westleytechnologies.com)
- **Industry**: Digital Marketing Agency
- **Status**: 🔴 Not Started
- **Tech Stack**: Astro + FastAPI + Cloud Run
- **Revenue Model**: Service fees / Retainers
- **Priority**: **LOW** - Service business, harder to scale

---

## 🎯 Recommended Execution Order

### **Q1 2026 (Jan-Mar): Foundation**
- ✅ Deploy Westley Resource to Firebase (DONE)
- 🔄 Fix custom domain DNS
- 📝 Apply for Google for Startups ($200k-$350k credits)
- 📝 Apply for Microsoft for Startups (LinkedIn Premium + $2.5k OpenAI credits)
- 🏗️ Create GCP "Hub" project (westley-group-prod)
- 🗄️ Set up Cloud SQL (shared database)

### **Q2 2026 (Apr-Jun): Backend Development**
- 🐍 Build FastAPI backend for Westley Resource
- 🚀 Deploy to Cloud Run
- 🔗 Connect to Hub database
- 🤖 Integrate Vertex AI for resume parsing
- 🧪 Beta test with 10 companies

### **Q3 2026 (Jul-Sep): Gubbu Migration**
- 🔄 Migrate Gubbu from Vite to Astro
- 📈 Implement SEO optimizations
- 💰 Launch "Decision Brief" paid product
- 📊 Scale affiliate revenue

### **Q4 2026 (Oct-Dec): Expansion**
- 🏦 Start Westley Group (FinTech) if Resource is profitable
- 📱 Consider Westley Technologies if needed

---

## 💰 The "Hub & Spoke" Cost Strategy

### Central Hub: `westley-group-prod`
**Hosts**: Cloud SQL (PostgreSQL) - **$50/mo** (covered by startup credits)

**Contains**:
- `db_resource` - Westley Resource data
- `db_gubbu` - Gubbu.io data  
- `db_group` - Westley Group data
- `db_tech` - Westley Technologies data

### Spokes (Individual Projects)
Each project has:
- **Firebase Hosting**: $0/mo (free tier covers most traffic)
- **Cloud Run**: $0-$10/mo (scales to zero when not in use)
- **IAM Connection**: To shared database (no extra cost)

**Total Monthly Cost** (without credits): ~$70/mo for all 4 companies
**With Startup Credits**: $0/mo for 24 months

---

## 🔐 Security Isolation

### Critical Principle
Even though they share a database **server**, each project has:
- ✅ Separate GCP Project (billing isolation)
- ✅ Separate database (logical isolation)
- ✅ Separate user credentials (access control)
- ✅ Separate IAM roles (permission isolation)

**Result**: If Gubbu.io gets hacked, the attacker **cannot** access Westley Group financial data.

---

## 📊 Success Metrics

### Westley Resource (Primary Focus)
- **Month 1-3**: 10 beta customers
- **Month 4-6**: $5k MRR (Monthly Recurring Revenue)
- **Month 7-12**: $20k MRR

### Gubbu.io (Secondary)
- **Month 1-3**: 10k monthly visitors
- **Month 4-6**: $1k/mo affiliate revenue
- **Month 7-12**: $3k/mo combined revenue

---

## 🚨 Risk Mitigation

### Don't Build All 4 Simultaneously
**Why**: Solo founders who split focus fail. Build one, prove revenue, then expand.

**Strategy**: 
1. Get Westley Resource to $10k MRR
2. **Then** consider Westley Group
3. Only build Westley Technologies if clients demand it

### FinTech Compliance
Westley Group requires:
- SOC 2 compliance
- Data encryption at rest
- Audit logs
- Possibly PCI-DSS (if handling payments)

**Don't start this until you have revenue** from Westley Resource to pay for compliance audits.

---

## 📞 Next Actions (This Week)

1. [ ] Fix DNS for westleyresource.com (see DNS_SETUP.md)
2. [ ] Create landing page content for Westley Resource
3. [ ] Apply for Google for Startups
4. [ ] Apply for Microsoft for Startups  
5. [ ] Create `westley-group-prod` GCP project
6. [ ] Set up Cloud SQL instance

---

**Last Updated**: 2026-01-24
**Owner**: Kishore Kumar
**Status**: Active Development
