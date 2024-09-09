
# Beer Store Database System

## Project Overview
The Beer Store Database System is designed to efficiently manage data for a beer store's operations, including inventory, sales, and customer management. This project includes creating the necessary database structures and automating key processes using **Oracle** SQL scripts.

## Prerequisites
- **Oracle SQL*Plus** installed on your machine.
- Basic familiarity with SQL and Oracle database systems.
- **ODBC** Data Source setup for linking to external data (e.g., Microsoft Access).

## Installation Instructions

### Step 1: Preparation
1. Copy the `BeerStore_create.sql` script to a convenient folder on your machine.
2. The default Sysadmin credentials are:
   - **Username**: `manager`
   - **Password**: `It1234`
   - If you prefer to change these credentials, open the `.sql` script in a text editor (e.g., Notepad) and modify the following line:
     ```sql
     CREATE USER manager IDENTIFIED BY It1234 ACCOUNT UNLOCK;
     ```

3. Open a command prompt (cmd) as an administrator, and navigate to the folder where your SQL script is stored using the `cd` command.
   - Example:
     ```bash
     cd D:/level two/Database System
     ```

### Step 2: Connect to SQL*Plus
Run the following command to start SQL*Plus and connect as the **SYSDBA** user:
```bash
sqlplus / as sysdba
```

### Step 3: Run the Creation Script
Execute the `BeerStore_create.sql` script to create the database by running:
```bash
@BeerStore_create.sql
```

### Step 4: Verify the Script Execution
After running the script, you'll see confirmation lines indicating that your database and its related structures were successfully created.

### Step 5: Cleanup (if needed)
If there are any errors during script execution, you can exit SQL*Plus and reconnect as SYSDBA:
```bash
exit
sqlplus / as sysdba
```
Run the provided cleanup script:
```bash
@BeerStore_cleanup.sql
```

## Setting Up the ODBC Data Source

### Step 1: Retrieve the Connection Name
In SQL*Plus, run:
```bash
show con_name
```
It will return your connection name (e.g., `localhost:1521/connection_name`).

### Step 2: Configure ODBC Data Source
1. Open **ODBC Data Source Administrator**.
2. Under the **System DSN** tab, click **Add** to create a new data source.
3. Provide the following details:
   - **Data Source Name**: BeerStore
   - **TNS Service Name**: `localhost:1521/connection_name` (replace with your connection name).
   - **User ID**: `manager` (or the username you changed to).

4. Click **Test Connection** and provide the password (`It1234` by default) when prompted. Ensure the connection is successful.

## Linking the ODBC Data Source in Microsoft Access

1. Open **Microsoft Access**.
2. Navigate to the **External Data** tab.
3. Select **New Data Source** > **From Other Sources** > **ODBC Database**.
4. Choose **Link to the data source by creating a linked table**.
5. Select the ODBC data source (`BeerStore`), enter your credentials, and select the tables you wish to link.

---

## Troubleshooting
- If you encounter issues during setup, ensure the database credentials and file paths are correct.
- If connection issues persist, verify that your Oracle SQL environment is properly configured and accessible.

