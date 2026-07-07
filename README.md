# GitHub Achievement Badges - Educational Guide

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Educational Purpose](https://img.shields.io/badge/Purpose-Educational-blue.svg)]()

> **⚠️ EDUCATIONAL PURPOSE ONLY**
> 
> This repository is for **educational purposes** to understand GitHub's achievement badge system. All methods described should be used **ethically** and in accordance with [GitHub's Terms of Service](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service).
>
> **DO NOT use these scripts for spam, abuse, or to game the GitHub system inappropriately.**

## 📚 Table of Contents

- [About GitHub Badges](#about-github-badges)
- [Available Badges](#available-badges)
- [Ethical Guidelines](#ethical-guidelines)
- [Getting Started](#getting-started)
- [Tools & Scripts](#tools--scripts)
- [How to Earn Each Badge](#how-to-earn-each-badge)
- [Important Notes](#important-notes)
- [Disclaimer](#disclaimer)
- [License](#license)

## 🏆 About GitHub Badges

GitHub Achievement Badges are profile decorations that recognize various contributions and activities on GitHub. They appear on your profile under the "Achievements" tab.

**Official Documentation:** https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/managing-contribution-settings-on-your-profile/showing-your-private-contributions-and-achievements-on-your-profile

## 🎖️ Available Badges

### Currently Earnable:

| Badge | Description | Tiers |
|-------|-------------|-------|
| 🦈 **Pull Shark** | Merge pull requests | Bronze (2), Silver (16), Gold (128) |
| 🎯 **YOLO** | Merge PR without code review | Single tier |
| ⚡ **Quickdraw** | Close issue/PR within 5 min | Single tier |
| 👥 **Pair Extraordinaire** | Co-author commits | Bronze (1), Silver (10), Gold (24) |
| ⭐ **Starstruck** | Repository receives stars | Bronze (16), Silver (128), Gold (512) |
| 🧠 **Galaxy Brain** | Get accepted Discussion answers | Bronze (2), Silver (8), Gold (16) |
| ❤️ **Heart On Your Sleeve** | React to content | Single tier |
| 🔮 **Open Sourcerer** | Contribute to multiple repos | Tiered |
| 💝 **GitHub Sponsor** | Sponsor open source | Single tier |

### Historical (No Longer Earnable):
- ❄️ Arctic Code Vault Contributor (2020)
- 🚁 Mars 2020 Helicopter Contributor (2020)

## ⚖️ Ethical Guidelines

### ✅ DO:
- Create **legitimate** contributions to real projects
- Build **useful** repositories that provide value
- Answer **genuine** questions in Discussions
- Collaborate with **real** people on meaningful work
- Use these scripts as **learning tools** to understand GitHub's API
- Follow all of [GitHub's Community Guidelines](https://docs.github.com/en/site-policy/github-terms/github-community-guidelines)

### ❌ DON'T:
- Create spam repositories or pull requests
- Game the system with fake activity
- Abuse GitHub's resources
- Create bot accounts
- Violate GitHub's Terms of Service
- Engage in any activity that could result in account suspension

## 🚀 Getting Started

### Prerequisites

```bash
# Install GitHub CLI
winget install --id GitHub.cli

# OR download from:
# https://cli.github.com/

# Authenticate
gh auth login
```

### Setup

1. **Clone this repository:**
   ```bash
   git clone https://github.com/minuttt/github-badges-farm.git
   cd github-badges-farm
   ```

2. **Review the scripts** before running (see [Tools & Scripts](#tools--scripts))

3. **Run scripts responsibly** - Don't spam or abuse

## 🛠️ Tools & Scripts

This repository contains educational scripts to understand badge mechanics:

### Core Scripts

#### `badge-farmer.sh`
**Purpose:** Demonstrates automated PR creation and merging
**Educational Use:** Learn about GitHub's PR workflow and API

```bash
# WARNING: Review this script before running
# Use ONLY for learning in your own test repositories
bash badge-farmer.sh
```

#### `create_discussions.py`
**Purpose:** Shows how to create and manage GitHub Discussions via API
**Educational Use:** Learn GraphQL API for GitHub Discussions

```python
# Review and understand the code first
python create_discussions.py
```

#### `continue-farming.sh`
**Purpose:** Interactive menu for badge-earning activities
**Educational Use:** Understand different badge requirements

```bash
bash continue-farming.sh
```

#### `quick-wins.sh`
**Purpose:** Guide for earning badges through legitimate activity
**Educational Use:** Learn about immediate badge opportunities

```bash
bash quick-wins.sh
```

### Documentation Files

- **`COMPLETE_GUIDE.md`** - Comprehensive badge earning guide
- **`BADGE_GUIDE.md`** - Reference for all badge types
- **`BADGE_STATUS.md`** - Track your progress
- **`CORRECTED_STRATEGY.md`** - Ethical earning strategies

## 📖 How to Earn Each Badge (Ethically)

### 🦈 Pull Shark

**Legitimate Methods:**
1. Contribute fixes to open source projects
2. Review and merge team PRs in work repositories
3. Build your own projects with proper branching workflow
4. Participate in hackathons

**Script Demo:** `badge-farmer.sh` (for educational understanding only)

### 🧠 Galaxy Brain

**Legitimate Methods:**
1. Join GitHub Discussions in projects you know
2. Answer questions from real users
3. Provide helpful, accurate information
4. Share your expertise in your domain

**Where to Start:**
- https://github.com/github/feedback/discussions
- Discussions in projects you actively use
- Communities in your tech stack

### ⭐ Starstruck

**Legitimate Methods:**
1. Build useful, high-quality projects
2. Create helpful templates or tools
3. Write excellent documentation
4. Solve real problems

**Tips:**
- Add comprehensive READMEs
- Include examples and demos
- Use relevant topics/tags
- Engage with your users

### 💝 GitHub Sponsor

**Legitimate Methods:**
1. Support maintainers of tools you use
2. Sponsor educational content creators
3. Fund open source projects you rely on

**Getting Started:** https://github.com/sponsors

### 🔮 Open Sourcerer

**Legitimate Methods:**
1. Find "good first issue" labels
2. Fix documentation typos
3. Add code examples
4. Report and fix bugs
5. Improve test coverage

**Resources:**
- https://goodfirstissue.dev/
- https://up-for-grabs.net/
- https://firstcontributions.github.io/

## ⚠️ Important Notes

### Badge Update Timing
- Badges can take **24-48 hours** to appear on your profile
- GitHub updates achievements periodically, not in real-time
- Be patient after completing badge requirements

### What Doesn't Count
- ❌ Answering your own questions in Discussions
- ❌ Self-starring repositories (against ToS)
- ❌ Bot-generated contributions
- ❌ Spam activity

### Rate Limits
- GitHub API has rate limits
- Excessive automation may flag your account
- Always add delays between automated actions
- Respect GitHub's infrastructure

### Account Safety
- **Never** share your authentication tokens
- **Don't** run untrusted scripts with your credentials
- **Review** all code before executing
- **Backup** your important repositories

## 🎓 Educational Goals

This repository teaches:

1. **GitHub API Usage**
   - REST and GraphQL APIs
   - Authentication flows
   - Rate limiting and best practices

2. **Git Workflows**
   - Branch management
   - Pull request workflows
   - Co-authoring commits
   - Issue management

3. **GitHub Features**
   - Discussions
   - Sponsors
   - Actions (coming soon)
   - Project management

4. **Automation Ethics**
   - Responsible scripting
   - Respecting platform limits
   - Community guidelines

## 🚨 Disclaimer

**READ THIS CAREFULLY:**

This repository and its contents are provided for **EDUCATIONAL PURPOSES ONLY**.

### No Warranty
This software is provided "as is", without warranty of any kind. Use at your own risk.

### Responsibility
You are solely responsible for:
- How you use these scripts
- Compliance with GitHub's Terms of Service
- Any consequences of your actions
- Ensuring ethical use of automation

### Not Affiliated
This project is not affiliated with, endorsed by, or connected to GitHub, Inc. in any way.

### Account Risk
Misuse of these scripts may result in:
- Account suspension or termination
- Rate limiting
- API access revocation
- Loss of badges or achievements

### Terms of Service
By using this repository, you agree to:
- Follow [GitHub's Terms of Service](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service)
- Follow [GitHub's Community Guidelines](https://docs.github.com/en/site-policy/github-terms/github-community-guidelines)
- Use scripts responsibly and ethically
- Not engage in spam or abuse

## 📜 License

MIT License - See [LICENSE](LICENSE) file for details

## 🤝 Contributing

Contributions are welcome! Please:

1. Ensure contributions promote ethical use
2. Add educational value
3. Include proper documentation
4. Follow GitHub's community guidelines

**Before contributing:** Read [CONTRIBUTING.md](CONTRIBUTING.md)

## 📞 Support

- **Issues:** Use GitHub Issues for bugs or questions
- **Discussions:** Use GitHub Discussions for general topics
- **Security:** Report security concerns privately

## 🔗 Useful Resources

- [GitHub Docs - Achievements](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/managing-contribution-settings-on-your-profile/showing-your-private-contributions-and-achievements-on-your-profile)
- [GitHub CLI Documentation](https://cli.github.com/manual/)
- [GitHub API Documentation](https://docs.github.com/en/rest)
- [GitHub GraphQL API](https://docs.github.com/en/graphql)
- [Good First Issues](https://goodfirstissue.dev/)
- [GitHub Community Guidelines](https://docs.github.com/en/site-policy/github-terms/github-community-guidelines)

## ⭐ Star This Repository

If you find this educational resource helpful, please star the repository! (See, that's how you earn Starstruck ethically! 😄)

---

**Remember:** The best way to earn badges is through genuine contribution to the GitHub community. These tools are here to help you understand the system, not to game it.

**Happy (Ethical) Contributing! 🚀**

---

**Created with ❤️ for learning purposes**

**Last Updated:** July 2026
