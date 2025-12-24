#!/bin/bash

# Script para publicar Filament Admin Starter no GitHub

echo "🚀 Preparando para publicar no GitHub..."
echo ""

# Verificar se estamos no diretório correto
if [ ! -f "composer.json" ]; then
    echo "❌ Erro: Execute este script no diretório do projeto!"
    exit 1
fi

# Inicializar Git
echo "📦 Inicializando repositório Git..."
git init

# Adicionar todos os arquivos
echo "📝 Adicionando arquivos..."
git add .

# Criar primeiro commit
echo "💾 Criando commit inicial..."
git commit -m "Initial commit: Filament Admin Starter with Laravel 11

Features:
- Complete RBAC system with 4 roles and 13 permissions
- User, Role, and Post management resources
- Dashboard with statistics widgets
- File upload with image editor
- Docker configuration (PHP, MySQL, Nginx, PHPMyAdmin)
- Comprehensive documentation with screenshots
- Database seeders with sample data

Tech Stack:
- Laravel 11
- Filament 3
- Spatie Permission
- MySQL 8.0
- Docker

Documentation:
- Professional README with screenshots
- Contributing guidelines
- Quick reference guide
- Setup automation scripts"

echo ""
echo "✅ Repositório Git inicializado!"
echo ""
echo "📋 Próximos passos:"
echo ""
echo "1. Crie um novo repositório no GitHub:"
echo "   https://github.com/new"
echo ""
echo "   Nome: filament-admin-starter"
echo "   Descrição: Professional Laravel 11 + Filament 3 admin panel starter with RBAC, file uploads, and Docker support"
echo "   Visibilidade: Public"
echo "   License: MIT"
echo ""
echo "2. Depois execute:"
echo "   git remote add origin https://github.com/makisjeanty/filament-admin-starter.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Configure as topics no repositório:"
echo "   laravel, laravel-11, filament, filament-admin, php, admin-panel, rbac, docker, mysql, starter-template"
echo ""
echo "4. Atualize seu README do perfil:"
echo "   https://github.com/makisjeanty/makisjeanty/edit/main/README.md"
echo ""
echo "   Adicione na seção 'Projetos em destaque':"
echo "   - 🔹 [Filament Admin Starter](https://github.com/makisjeanty/filament-admin-starter) - Laravel 11 + Filament 3 admin panel with RBAC, file uploads, Docker"
echo ""
