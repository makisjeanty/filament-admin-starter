# Filament Admin Starter - Quick Reference

## 🚀 Quick Start

```bash
# Clone and setup
git clone <repo-url> filament-admin-starter
cd filament-admin-starter
cp .env.example .env
composer install
php artisan key:generate

# Database
php artisan migrate:fresh --seed

# Storage
php artisan storage:link

# Start server
php artisan serve
```

**Access:** http://localhost:8000/admin  
**Login:** admin@admin.com / password

---

## 📁 Project Structure

```
app/
├── Filament/
│   ├── Resources/          # CRUD resources
│   │   ├── UserResource.php
│   │   ├── RoleResource.php
│   │   └── PostResource.php
│   └── Widgets/            # Dashboard widgets
│       ├── StatsOverview.php
│       └── LatestPosts.php
├── Models/
│   ├── User.php
│   └── Post.php
database/
├── migrations/
└── seeders/
    ├── RolePermissionSeeder.php
    ├── AdminUserSeeder.php
    └── PostSeeder.php
```

---

## 👥 Default Users

| Email | Password | Role |
|-------|----------|------|
| admin@admin.com | password | Super Admin |
| admin@example.com | password | Admin |
| editor@example.com | password | Editor |

---

## 🎯 Roles & Permissions

### Super Admin
- Full access to everything

### Admin
- Manage users
- Manage posts (all)
- View roles

### Editor
- Create posts
- Edit own posts
- View posts

### User
- View posts only

---

## 🛠️ Common Commands

```bash
# Database
php artisan migrate:fresh --seed    # Reset database
php artisan db:seed                  # Run seeders only

# Cache
php artisan config:cache             # Cache config
php artisan route:cache              # Cache routes
php artisan view:cache               # Cache views
php artisan optimize                 # Optimize all

# Clear cache
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan optimize:clear

# Filament
php artisan filament:user            # Create admin user
php artisan make:filament-resource   # Create resource
php artisan make:filament-widget     # Create widget
```

---

## 🐳 Docker Commands

```bash
# Start containers
docker-compose up -d

# Stop containers
docker-compose down

# View logs
docker-compose logs -f

# Execute commands in container
docker-compose exec app php artisan migrate
docker-compose exec app composer install
docker-compose exec app npm install

# Access container shell
docker-compose exec app bash

# Rebuild containers
docker-compose up -d --build
```

**Services:**
- App: http://localhost:8080
- PHPMyAdmin: http://localhost:8081

---

## 📝 Creating New Resources

```bash
# Create resource with pages
php artisan make:filament-resource Product

# Create resource with modal
php artisan make:filament-resource Product --simple

# Create resource with soft deletes
php artisan make:filament-resource Product --soft-deletes
```

---

## 🎨 Creating Widgets

```bash
# Stats widget
php artisan make:filament-widget StatsWidget --stats-overview

# Chart widget
php artisan make:filament-widget ChartWidget --chart

# Table widget
php artisan make:filament-widget TableWidget --table
```

---

## 🔧 Environment Variables

```env
# App
APP_NAME="Filament Admin Starter"
APP_ENV=local
APP_DEBUG=true
APP_URL=http://localhost:8000

# Database
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=filament_admin
DB_USERNAME=root
DB_PASSWORD=

# Storage
FILESYSTEM_DISK=public
```

---

## 📦 Key Dependencies

- **Laravel:** 11.x
- **Filament:** 3.x
- **Spatie Permission:** 6.x
- **PHP:** 8.2+
- **MySQL:** 8.0+

---

## 🔗 Useful Links

- [Laravel Docs](https://laravel.com/docs)
- [Filament Docs](https://filamentphp.com/docs)
- [Spatie Permission](https://spatie.be/docs/laravel-permission)

---

## 🐛 Troubleshooting

### "Class not found" error
```bash
composer dump-autoload
```

### Storage link not working
```bash
php artisan storage:link
```

### Permission denied on storage
```bash
chmod -R 775 storage bootstrap/cache
```

### Database connection error
- Check `.env` database credentials
- Ensure MySQL is running
- Create database if it doesn't exist

### Filament not loading
```bash
php artisan filament:upgrade
php artisan optimize:clear
```

---

## 📞 Support

- **Issues:** Open a GitHub issue
- **Questions:** Check existing issues first
- **Contributing:** See CONTRIBUTING.md

---

**Last Updated:** December 2024
