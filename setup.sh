#!/bin/bash

# Filament Admin Starter - Setup Script

echo "🚀 Setting up Filament Admin Starter..."

# Copy environment file
if [ ! -f .env ]; then
    echo "📝 Creating .env file..."
    cp .env.example .env
    php artisan key:generate
fi

# Install Composer dependencies
echo "📦 Installing Composer dependencies..."
composer install --no-interaction

# Install NPM dependencies
echo "📦 Installing NPM dependencies..."
npm install

# Create database (MySQL)
echo "🗄️  Creating database..."
echo "Please run the following command manually:"
echo "mysql -u root -p -e \"CREATE DATABASE IF NOT EXISTS filament_admin;\""
read -p "Press enter after creating the database..."

# Run migrations and seeders
echo "🔄 Running migrations and seeders..."
php artisan migrate:fresh --seed

# Create storage link
echo "🔗 Creating storage symlink..."
php artisan storage:link

# Build assets
echo "🎨 Building assets..."
npm run build

echo ""
echo "✅ Setup complete!"
echo ""
echo "📌 Default credentials:"
echo "   Email: admin@admin.com"
echo "   Password: password"
echo ""
echo "🌐 Start the server with:"
echo "   php artisan serve"
echo ""
echo "   Then visit: http://localhost:8000/admin"
echo ""
