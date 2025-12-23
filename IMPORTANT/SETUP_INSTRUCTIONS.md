# Online Clothing Shop - Setup Instructions

This project has been configured for Arch Linux with the following setup:

## Database Setup

- The project now uses SQLite instead of SQL Server for easier setup
- Database is automatically created when the application starts
- Database file: `OnlineClothingShop/OnlineClothingShop.db`
- No manual SQL script execution required

## Requirements

- .NET 8.0 SDK and ASP.NET Core 8.0 runtime
- On Arch Linux: `sudo pacman -S dotnet-sdk-8.0 aspnet-runtime-8.0`

## Quick Start

1. Navigate to OnlineClothingShop directory
2. Run: `dotnet run`
3. Application will be available at:
   - HTTP: http://localhost:5129
   - HTTPS: https://localhost:7199

## Database Source

- Original SQL files are still available in `IMPORTANT/DatabaseSource/`
- These are for reference only - the application now uses Entity Framework
- SQLite database with all tables is created automatically

## Project Structure

```
WebDesignAssignment_OnlineClothingShop/
├── OnlineClothingShop/          # Main .NET application
├── IMPORTANT/                   # Original documentation
│   ├── SETUP_INSTRUCTIONS.md    # This file
│   ├── DatabaseSource/          # Original SQL files
│   └── Images to import/        # Product images
└── setup_database.sh           # Legacy setup script (no longer needed)
```

## Database Tables

The database includes:

### Identity Tables
- AspNetUsers - User accounts
- AspNetRoles - User roles
- AspNetUserRoles - User-role assignments

### Application Tables
- tb_Categories - Product categories
- tb_Products - Product information
- tb_Customers - Customer data
- tb_Orders - Order information
- tb_OrderDetails - Order line items
- tb_TransactStatus - Order status tracking

All tables are created automatically on first application run.

## Troubleshooting

### Application won't start
- Ensure .NET 8.0 SDK and ASP.NET Core 8.0 runtime are installed
- Check that port 5129 and 7199 are not in use
- Verify the OnlineClothingShop.db file can be created in the project directory

### Database issues
- Delete `OnlineClothingShop.db` and restart the application
- Check file permissions in the project directory
- Ensure SQLite is properly configured

### Port conflicts
- The application uses ports 5129 (HTTP) and 7199 (HTTPS)
- If ports are in use, the application will show an error
- Stop other applications using these ports or change the launch settings

## Development Notes

- The application is configured for development environment
- Detailed error pages are enabled
- Developer certificate is used for HTTPS (browser may show warning)
- Database migrations are handled automatically on startup

## Migration from SQL Server

If you need to migrate from the original SQL Server setup:

1. Export data from existing SQL Server database
2. Convert SQL scripts to SQLite format if needed
3. Import data into the SQLite database
4. Update connection strings in appsettings.json

The current setup is optimized for simplicity and easy deployment on Arch Linux.
