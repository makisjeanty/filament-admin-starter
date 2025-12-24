#!/bin/bash

# Database Setup Script for Filament Admin Starter

echo "🗄️  Setting up MySQL database for Filament Admin Starter"
echo ""

# Create database and user with sudo
echo "Creating database and user (requires sudo password)..."
sudo mysql <<EOF
CREATE DATABASE IF NOT EXISTS filament_admin;
CREATE USER IF NOT EXISTS 'filament'@'localhost' IDENTIFIED BY 'filament123';
GRANT ALL PRIVILEGES ON filament_admin.* TO 'filament'@'localhost';
FLUSH PRIVILEGES;
EOF

if [ $? -eq 0 ]; then
    echo "✅ Database and user created successfully!"
    echo ""
    
    # Update .env file
    echo "📝 Updating .env file with database credentials..."
    sed -i 's/DB_USERNAME=root/DB_USERNAME=filament/' .env
    sed -i 's/DB_PASSWORD=/DB_PASSWORD=filament123/' .env
    
    echo "✅ .env file updated!"
    echo ""
    
    # Run migrations
    echo "🔄 Running migrations and seeders..."
    php artisan migrate:fresh --seed
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Setup complete!"
        echo ""
        echo "📌 Database Credentials:"
        echo "   Database: filament_admin"
        echo "   Username: filament"
        echo "   Password: filament123"
        echo ""
        echo "📌 Admin Credentials:"
        echo "   Email: admin@admin.com"
        echo "   Password: password"
        echo ""
        echo "🌐 Access the admin panel at: http://localhost:8000/admin"
    else
        echo "❌ Migration failed. Please check the error above."
    fi
else
    echo "❌ Database creation failed. Please check your MySQL installation."
fi
