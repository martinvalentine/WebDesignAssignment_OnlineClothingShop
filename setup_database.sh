#!/bin/bash

# Database Setup Script for Online Clothing Shop
echo "Setting up database for Online Clothing Shop..."

# Variables
DB_NAME="ClothingShop"
DB_USER="postgres"
SQL_DIR="IMPORTANT/DatabaseSource"

# Check if PostgreSQL is running
if ! systemctl is-active --quiet postgresql; then
    echo "PostgreSQL is not running. Please start it with:"
    echo "sudo systemctl start postgresql"
    exit 1
fi

# Create database (if it doesn't exist)
echo "Creating database $DB_NAME..."
sudo -i -u postgres createdb $DB_NAME 2>/dev/null || echo "Database already exists"

# Import the main database schema
echo "Importing main database schema..."
sudo -i -u postgres psql -d $DB_NAME -f "$SQL_DIR/ClothingShop.sql"

# Import admin management data
echo "Importing admin management data..."
sudo -i -u postgres psql -d $DB_NAME -f "$SQL_DIR/AdminManageDatabase.sql"

echo "Database setup complete!"
echo ""
echo "Next steps:"
echo "1. Update the password in appsettings.json"
echo "2. Run: dotnet restore"
echo "3. Run: dotnet run"
