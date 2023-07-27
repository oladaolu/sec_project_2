## Automated Daily Tasks for Different Linux Distributions

This script automates daily tasks for different Linux distributions (CentOS, Ubuntu, Alpine) based on the detected distribution.

### Prerequisites
- For CentOS and Red Hat:
    - CentOS or Red Hat Linux distribution.
    - `yum` package manager.

- For Ubuntu:
    - Ubuntu Linux distribution.
    - `apt-get` package manager.

- For Alpine:
    - Alpine Linux distribution.
    - `apk` package manager.
    - Docker installed on Alpine.

### Setup
1. Copy the script `daily_tasks.sh` to your Linux server.

2. Set execution permissions for the script:
   ```bash
   chmod +x daily_tasks.sh

1. Create an environment variable to store the database password securely.
For example, in Linux, you can set the environment variable in the user's .bashrc or .bash_profile file:
export DB_PASSWORD="your_database_password"

2. If using Ubuntu, ensure that the MySQL client package is installed on the system.

Usage
Simply run the script to execute the daily tasks for the detected distribution:
./daily_tasks.sh

### **Important Note**

1. Ensure you have set the DB_PASSWORD environment variable before running the script for Ubuntu, as it will be used to set the root password for MariaDB.

2. Replace 'your_database_password' in the environment variable and script with your actual database password.

3. Make sure you have the necessary permissions to execute the script and run the tasks as needed.

4. For security reasons, avoid sharing or exposing the script with sensitive information to unauthorized users.
