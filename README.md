# Linux Automated Backup Script

Infrastructure automation project developed in **Bash Shell** for automated backup routine management, data integrity, and storage lifecycle control.

## 🚀 Features

- **Dynamic Compression:** Compresses source directories into `.tar.gz` packages using a timestamp format (`YYYYMMDD_HHMMSS`).
- **Error Handling:** Exit status validation (`$?`) for success confirmation or failure handling.
- **Retention Policy (Purge):** Automatic deletion of backup files older than 7 days using the `find` command.
- **Autonomous Scheduling:** Daily background execution via the `crontab` service with detailed log generation.

## 🛠️ Technologies Used

- **Linux (Ubuntu)**
- **Bash Shell Scripting**
- **Cron (Job Scheduling)**
- **Tar & Gzip Compression**

## 💻 How to Run

1. Clone the repository:
   ```bash
   git clone [https://github.com/SEU_USUARIO_GITHUB/linux-automated-backup.git](https://github.com/SEU_USUARIO_GITHUB/linux-automated-backup.git)
   cd linux-automated-backup
