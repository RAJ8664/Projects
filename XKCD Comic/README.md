# 🎨 XKCD Comic Daily Newsletter

<div align="center">
  
  [![PHP](https://img.shields.io/badge/PHP-7.4%2B-blue.svg)](https://www.php.net/)
  [![Status](https://img.shields.io/badge/status-Active-brightgreen.svg)](#)
  
  *A delightful way to receive your daily dose of XKCD comics straight to your inbox* 📧
  
</div>

The **XKCD Comic Daily Newsletter** is a subscription-based service that delivers random XKCD comics to your email inbox every day at 10:00 AM. Built with PHP, this lightweight application features email verification, secure subscription management, and automated comic delivery.

> **Why XKCD?** XKCD comics are beloved by programmers, scientists, and internet enthusiasts worldwide for their clever humor and insightful commentary on technology, science, and life.

## ✨ Features

### 🔐 **Secure Subscription System**

- **Email Verification**: Two-step verification process with 6-digit codes
- **Duplicate Prevention**: Automatic detection of existing subscriptions
- **Session Management**: Secure handling of verification sessions

### 📧 **Email Management**

- **HTML Email Support**: Rich formatting with embedded images
- **Unsubscribe Protection**: Verification required for unsubscription
- **Bulk Email Delivery**: Efficient delivery to all subscribers

### 🎲 **Comic Delivery**

- **Random Comics**: Delivers random XKCD comics from a pool of 2000+ comics
- **Automated Scheduling**: Daily delivery via cron job
- **Rich Content**: Includes comic images and metadata

## 🔧 Tech Stack

| Technology      | Purpose          | Version |
| --------------- | ---------------- | ------- |
| **PHP**         | Backend Language | 7.4+    |
| **HTML5**       | Frontend Markup  | Latest  |
| **Cron**        | Task Scheduling  | System  |
| **File System** | Data Storage     | -       |
| **XKCD API**    | Comic Source     | v1      |

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **PHP 7.4+** with mail() function enabled
- **Web server** (Apache, Nginx, or PHP built-in server)
- **Cron daemon** (for automated email delivery)
- **SMTP server** configured for outgoing emails

### System Requirements

```bash
# Check PHP version
php --version

# Verify mail function is available
php -m | grep mail

# Check if cron is running
sudo systemctl status cron
```

## 📁 Project Structure

```
XKCD Comic/
├── src/
│   ├── 📄 index.php              # Main subscription interface
│   ├── 📄 functions.php          # Core application functions
│   ├── 📄 cron.php              # Automated email delivery script
│   ├── 📄 unsubscribe.php       # Unsubscription interface
│   ├── 📄 registered_emails.txt # Subscriber database (plain text)
│   └── 🔧 setup_cron.sh         # Cron job installation script
└── 📖 README.md                 # Project documentation
```

### File Descriptions

| File                    | Purpose               | Key Functions                        |
| ----------------------- | --------------------- | ------------------------------------ |
| `index.php`             | Subscription frontend | Email collection, verification UI    |
| `functions.php`         | Business logic        | Email handling, XKCD API integration |
| `cron.php`              | Automation script     | Batch email delivery                 |
| `unsubscribe.php`       | Unsubscription UI     | Secure unsubscribe process           |
| `registered_emails.txt` | Data storage          | Plain-text subscriber list           |
| `setup_cron.sh`         | Deployment script     | Automated cron job setup             |

## 🔌 API Endpoints

### Internal API Structure

| Function                         | Purpose                 | Parameters      | Returns         |
| -------------------------------- | ----------------------- | --------------- | --------------- |
| `generateVerificationCode()`     | Create 6-digit code     | None            | `string`        |
| `sendVerificationEmail()`        | Send verification email | `email`, `code` | `bool`          |
| `registerEmail()`                | Add subscriber          | `email`         | `bool`          |
| `unsubscribeEmail()`             | Remove subscriber       | `email`         | `bool`          |
| `fetchAndFormatXKCDData()`       | Get random comic        | None            | `string` (HTML) |
| `sendXKCDUpdatesToSubscribers()` | Deliver to all          | None            | `void`          |

## ⏰ Cron Job Setup

### Automated Setup

```bash
# Run the setup script
cd src
./setup_cron.sh
```

### Manual Setup

```bash
# Edit crontab directly
crontab -e

# Add this line for daily 10 AM delivery
0 10 * * * /usr/bin/php /full/path/to/src/cron.php
```

### Verify Cron Job

```bash
# List active cron jobs
crontab -l

# Check cron logs
sudo tail -f /var/log/cron
```

### Remove Cron Job

```bash
# Remove all cron jobs (be careful!)
crontab -r

# Or edit to remove specific job
crontab -e
```

### Contribution Guidelines

- **Code Style**: Follow PSR-12 PHP coding standards
- **Documentation**: Update README.md for new features
- **Testing**: Test all email flows manually
- **Security**: Consider security implications of changes

### Priority Features

- [ ] Database integration (MySQL/PostgreSQL)
- [ ] Admin dashboard for subscriber management
- [ ] Email templates and themes
- [ ] Comic archive and favorites
- [ ] Multiple delivery frequencies
- [ ] Statistics and analytics
- [ ] Docker containerization
- [ ] Unit tests and CI/CD

**[⬆ Back to Top](#-xkcd-comic-daily-newsletter)**

</div>
