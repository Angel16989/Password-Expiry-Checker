# Password Expiry Checker (Simulated)

This is a PowerShell script I wrote to simulate checking for password expirations in an Active Directory-style environment. Since I don’t have a domain setup, this script uses dummy data to mimic real user accounts.

## 🔧 What It Does

- Simulates AD user data (Name, Username, ExpiryDate)
- Filters users whose passwords expire in < 7 days
- Outputs the results as a table and exports to a `.csv` file

## 🧪 Why This Project?

I'm learning IT automation and helpdesk scripting. This script was inspired by a real-world scenario and built with help from OpenAI (ChatGPT). 

## 📂 Example Output

| Name      | Username | ExpiryDate          | DaysLeft |
|-----------|----------|---------------------|----------|
| John Doe  | jdoe     | 2025-07-27 09:00 AM | 5        |
| Mike Lee  | mlee     | 2025-07-24 09:00 AM | 2        |

## 🔗 Usage

Run PasswordExpiryChecker.ps1 in PowerShell (Windows):
You shall be able to see a table like in SimulatedExpiryReport.csv




💡 Future Plan
Connect to real Active Directory

Schedule with Task Scheduler

Add email integration
.\PasswordExpiryChecker.ps1

