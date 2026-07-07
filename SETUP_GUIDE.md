# Setup Guide - GitHub Badge Tools

This guide will help you set up the tools safely and ethically.

## ⚠️ Before You Start

**READ THIS:**
- These tools are for **educational purposes only**
- Use them in **your own test repositories**
- **Never** use them to spam or abuse GitHub
- Follow **GitHub's Terms of Service** at all times
- Your account is **your responsibility**

If you're not comfortable with these terms, **do not proceed**.

## 📋 Prerequisites

### 1. GitHub Account
- You need a GitHub account
- Make sure it's in good standing
- Read the [Terms of Service](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service)

### 2. Git Installed
```bash
# Check if git is installed
git --version

# If not installed, download from:
# https://git-scm.com/downloads
```

### 3. GitHub CLI Installed
```bash
# Windows (using winget)
winget install --id GitHub.cli

# Or download from:
# https://cli.github.com/

# Verify installation
gh --version
```

### 4. Python (Optional, for some scripts)
```bash
# Check Python version
python --version

# Need Python 3.7+ for Discussion scripts
# Download from: https://python.org
```

## 🚀 Installation Steps

### Step 1: Download or Clone

**Option A: Download ZIP**
1. Click "Code" button on GitHub
2. Select "Download ZIP"
3. Extract to your Desktop or preferred location

**Option B: Clone with Git**
```bash
cd ~/Desktop
git clone https://github.com/minuttt/github-badges-farm.git
cd github-badges-farm
```

### Step 2: Authenticate GitHub CLI

```bash
# Start authentication
gh auth login

# Follow the prompts:
# 1. Choose: GitHub.com
# 2. Protocol: HTTPS
# 3. Authenticate: Login with web browser
# 4. Copy the one-time code
# 5. Complete authentication in browser

# Verify authentication
gh auth status
```

### Step 3: Create a Test Repository

**IMPORTANT:** Always test scripts in a dedicated test repository!

```bash
# Create new test repo
mkdir github-badge-test
cd github-badge-test
git init
echo "# Badge Testing" > README.md
git add README.md
git commit -m "Initial commit"

# Create on GitHub
gh repo create github-badge-test --public --source=. --push
```

### Step 4: Review the Scripts

**Before running any script:**

1. **Open and read** the script file
2. **Understand** what it does
3. **Check** for any customization needed
4. **Ensure** it won't harm anything

```bash
# View script contents
cat badge-farmer.sh
# or
notepad badge-farmer.sh
```

## 🛠️ Using the Tools

### Tool 1: badge-farmer.sh

**What it does:** Creates PRs, commits, and issues for badge progress

**Safe usage:**
```bash
# Navigate to YOUR TEST repository
cd ~/github-badge-test

# Copy the script
cp ~/Desktop/github-badge-tools/badge-farmer.sh .

# Review it first!
cat badge-farmer.sh

# Run it (it will ask for confirmation)
bash badge-farmer.sh
```

### Tool 2: create_discussions.py

**What it does:** Creates GitHub Discussions via API

**Safe usage:**
```bash
# Ensure you're in your test repo
cd ~/github-badge-test

# Enable Discussions on your test repo first:
gh api --method PATCH repos/YOUR_USERNAME/github-badge-test -f has_discussions=true

# Copy the script
cp ~/Desktop/github-badge-tools/create_discussions.py .

# Review the code
cat create_discussions.py

# Run it
python create_discussions.py
```

### Tool 3: continue-farming.sh

**What it does:** Interactive menu for various badge-earning activities

**Safe usage:**
```bash
cd ~/github-badge-test
cp ~/Desktop/github-badge-tools/continue-farming.sh .
bash continue-farming.sh
```

### Tool 4: quick-wins.sh

**What it does:** Guides you through quick badge opportunities

**Safe usage:**
```bash
cd ~/github-badge-test
cp ~/Desktop/github-badge-tools/quick-wins.sh .
bash quick-wins.sh
```

## 📚 Documentation Review

Before using tools, read these files:

1. **README.md** - Overview and ethical guidelines
2. **COMPLETE_GUIDE.md** - Comprehensive earning strategies
3. **CORRECTED_STRATEGY.md** - Why some methods don't work
4. **BADGE_GUIDE.md** - Reference for all badges

## ⚠️ Safety Checklist

Before running any script:

- [ ] I am using my own test repository
- [ ] I have read and understood the script
- [ ] I am not violating GitHub's Terms of Service
- [ ] I have rate limiting enabled in scripts
- [ ] I understand the consequences of my actions
- [ ] I will not use this to spam or abuse
- [ ] I have backups of important data

## 🚨 What NOT to Do

❌ **Never:**
- Run scripts on repositories you don't own
- Use scripts on production/important repositories
- Automate against public repos without permission
- Create bot networks or fake accounts
- Generate spam issues/PRs
- Abuse GitHub's API
- Share your authentication tokens

## 🎯 Recommended Workflow

### For Beginners:

1. **Week 1: Learn**
   - Read all documentation
   - Understand badge requirements
   - Review script code
   - No automation yet

2. **Week 2: Test Safely**
   - Create dedicated test repository
   - Run scripts in controlled environment
   - Monitor results
   - Understand timing and limits

3. **Week 3: Ethical Practice**
   - Earn badges through real contributions
   - Answer genuine questions
   - Build actual projects
   - Use scripts only for learning

### For Advanced Users:

1. **Customize Scripts**
   - Modify for your needs
   - Add better error handling
   - Improve rate limiting
   - Share improvements via PRs

2. **Contribute Back**
   - Report bugs
   - Suggest improvements
   - Help others learn
   - Follow CONTRIBUTING.md

## 🔧 Troubleshooting

### Authentication Issues

```bash
# Re-authenticate
gh auth logout
gh auth login

# Check status
gh auth status
```

### Script Errors

```bash
# Ensure correct path
export PATH="/c/Program Files/GitHub CLI:$PATH"

# Check permissions
ls -la *.sh

# Make executable (Linux/Mac)
chmod +x *.sh
```

### Rate Limiting

If you hit rate limits:
- **Wait** - Limits reset hourly
- **Slow down** - Add longer sleep times
- **Check** - `gh api rate_limit`

### Badge Not Appearing

- **Wait 24-48 hours** - GitHub updates slowly
- **Verify** - Check you met the requirements
- **Review** - Read CORRECTED_STRATEGY.md

## 📞 Getting Help

### Documentation
- Check existing docs in this repo
- Read GitHub's official documentation
- Review script comments

### Community
- Open GitHub Issue (for bugs)
- Start GitHub Discussion (for questions)
- Check existing issues first

### Don't Ask About:
- How to spam repositories
- How to bypass rate limits maliciously
- How to violate Terms of Service
- How to game the system unethically

## ✅ Final Checklist

Before you start earning badges:

- [ ] I've read the README completely
- [ ] I understand the ethical guidelines
- [ ] I've set up a test repository
- [ ] I've authenticated GitHub CLI
- [ ] I've reviewed the scripts
- [ ] I understand the risks
- [ ] I commit to ethical use
- [ ] I've read GitHub's Terms of Service

## 🎓 Next Steps

Once setup is complete:

1. **Review** COMPLETE_GUIDE.md for strategies
2. **Start small** with manual badge earning
3. **Test scripts** in your test repo
4. **Monitor progress** at github.com/YOUR_USERNAME?tab=achievements
5. **Be patient** - badges take time to appear
6. **Stay ethical** - real contributions are best

## 📖 Additional Resources

- [GitHub CLI Manual](https://cli.github.com/manual/)
- [GitHub REST API](https://docs.github.com/en/rest)
- [GitHub GraphQL API](https://docs.github.com/en/graphql)
- [GitHub Achievements Docs](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/managing-contribution-settings-on-your-profile/showing-your-private-contributions-and-achievements-on-your-profile)

---

## ⚖️ Legal Reminder

By using these tools, you acknowledge:
- You are responsible for your actions
- You will follow GitHub's Terms of Service
- You understand the educational purpose
- You will not abuse or spam
- You accept all risks

**Ready to learn? Let's go! 🚀**

---

Questions? Open an issue or discussion!
