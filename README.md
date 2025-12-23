# Online Clothing Shop

ASP.NET Core 8.0 web application for an online clothing store with user authentication, product management, and order processing.

## Features

- User authentication and authorization with ASP.NET Core Identity
- Product catalog management
- Shopping cart and order processing
- Admin dashboard for product and order management
- Responsive web design
- SQLite database for easy deployment

## Requirements

- .NET 8.0 SDK
- ASP.NET Core 8.0 Runtime
- On Arch Linux: `sudo pacman -S dotnet-sdk-8.0 aspnet-runtime-8.0`

## Quick Start

1. Clone the repository
2. Navigate to the project directory:
   ```bash
   cd OnlineClothingShop
   ```
3. Run the application:
   ```bash
   dotnet run
   ```
4. Open your browser and navigate to:
   - HTTP: http://localhost:5129
   - HTTPS: https://localhost:7199

The database will be created automatically on first run.

## Project Structure

```
WebDesignAssignment_OnlineClothingShop/
├── OnlineClothingShop/              # Main ASP.NET Core application
│   ├── Controllers/                 # MVC controllers
│   ├── Models/                      # Data models and DbContext
│   ├── Views/                       # Razor views
│   ├── wwwroot/                     # Static files
│   ├── Areas/                       # Identity areas
│   ├── Migrations/                  # Database migrations
│   ├── OnlineClothingShop.db        # SQLite database file
│   └── Program.cs                   # Application entry point
├── IMPORTANT/                       # Original documentation
│   ├── SETUP_INSTRUCTIONS.md        # Setup instructions
│   ├── DatabaseSource/              # Original SQL files
│   └── Images to import/            # Product images
└── README.md                        # This file
```

## Database

The application uses SQLite for data storage. The database includes:

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

### Database Management
- Database is automatically created on first application run
- Entity Framework migrations handle schema updates
- Database file: `OnlineClothingShop/OnlineClothingShop.db`

## Configuration

### Application Settings
Configuration is stored in `OnlineClothingShop/appsettings.json`:

```json
{
  "ConnectionStrings": {
    "OnlineClothingShopContext": "Data Source=OnlineClothingShop.db"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*"
}
```

### Development Environment
The application is configured for development with:
- Detailed error pages
- Developer certificate for HTTPS
- SQLite database for easy local development

## Deployment

### For Development
1. Ensure .NET 8.0 runtime is installed
2. Run `dotnet run` from the OnlineClothingShop directory
3. Access the application at the provided URLs

### For Production
1. Publish the application:
   ```bash
   dotnet publish -c Release -o ./publish
   ```
2. Configure production database connection
3. Set up reverse proxy (nginx/Apache)
4. Configure SSL certificates

## User Roles

The application supports the following user roles:
- **Admin**: Full access to all features
- **Customer**: Can browse products and place orders

Default admin account creation is handled through the registration system.

## Product Management

Admin users can:
- Add/edit/delete product categories
- Add/edit/delete products
- Manage product images
- Set pricing and inventory
- View sales reports

## Order Processing

Customers can:
- Browse products by category
- Add items to cart
- Place orders
- View order history

Admin users can:
- View all orders
- Update order status
- Manage shipping information

## Technical Stack

- **Frontend**: ASP.NET Core MVC with Razor views
- **Backend**: ASP.NET Core 8.0
- **Database**: SQLite with Entity Framework Core
- **Authentication**: ASP.NET Core Identity
- **Styling**: Bootstrap with custom CSS
- **JavaScript**: jQuery and vanilla JavaScript

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is part of the Web Design Assignment for Semester 1, Year 3.

## Support

For setup issues, refer to `IMPORTANT/SETUP_INSTRUCTIONS.md` for detailed instructions.
