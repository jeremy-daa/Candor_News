# Candor News

CandorNews is a news site built as a final project for Internet Programing II course

## Table of Contents

- [Workspace Setup](#workspace-setup)
- [Credentials](#credentials)
- [Accessing the Admin Panel](#accessing-the-admin-panel)

## Workspace Setup

To set up the CandorNews project, follow these steps:

1. Clone the repository from GitHub: `git clone https://github.com/jeremy-daa/Candor_News.git`

2. Install XAMPP and start the Apache server and MySQL.

3. Create a MySQL database named `candor_news` in phpMyAdmin.

4. Import the SQL schema by following these steps:
- Go to the root directory of the project where you can find the `candor_news.sql` file.
- Open phpMyAdmin and select the `candor_news` database.
- Click on the "Import" tab, choose the `candor_news.sql` file, and click "Go" to import the tables.

5. Configure the database connection by updating the credentials in the `./includes/database.inc.php` file (no need if it's set to default config).

6. Access the CandorNews site by opening `http://localhost/Candor_News` in your web browser.

## Credentials

- **Admin Panel:**
- URL: [http://localhost/Candor_News/admin/login.php](http://localhost/Candor_News/admin/login.php)
- Username: admin@admin.com
- Password: Admin1

- **Users and Authors:**
- Users and authors can create their own accounts through the registration process.

## Accessing the Admin Panel

To access the admin panel, follow these steps:

1. Open your web browser and visit [http://localhost/Candor_News/admin/login.php](http://localhost/Candor_News/admin/login.php).

2. Enter the following credentials:
- Username: admin@admin.com
- Password: Admin1

3. Once logged in, you will have access to the admin panel to manage the CandorNews site.

