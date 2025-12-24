# Contributing to Filament Admin Starter

Thank you for considering contributing to Filament Admin Starter! This document outlines the process for contributing to this project.

## Code of Conduct

Please be respectful and constructive in all interactions. We're here to build something great together.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce** the behavior
- **Expected behavior**
- **Actual behavior**
- **Screenshots** if applicable
- **Environment details** (PHP version, Laravel version, OS, etc.)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, include:

- **Clear title and description**
- **Use case** - why would this be useful?
- **Proposed solution** if you have one
- **Alternative solutions** you've considered

### Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Make your changes** following our coding standards
3. **Test your changes** thoroughly
4. **Update documentation** if needed
5. **Write clear commit messages**
6. **Submit a pull request**

## Development Setup

1. Clone your fork:
```bash
git clone https://github.com/your-username/filament-admin-starter.git
cd filament-admin-starter
```

2. Install dependencies:
```bash
composer install
npm install
```

3. Set up environment:
```bash
cp .env.example .env
php artisan key:generate
```

4. Create database and run migrations:
```bash
php artisan migrate:fresh --seed
```

5. Start development server:
```bash
php artisan serve
```

## Coding Standards

### PHP
- Follow **PSR-12** coding standard
- Use **type hints** where possible
- Write **descriptive variable names**
- Add **PHPDoc blocks** for methods
- Keep methods **focused and small**

### Laravel Conventions
- Use **Eloquent** over raw queries
- Follow **RESTful** resource naming
- Use **form requests** for validation
- Keep **controllers thin**
- Use **service classes** for complex logic

### Filament Conventions
- Use **resource classes** for CRUD operations
- Leverage **form components** effectively
- Use **table columns** appropriately
- Add **filters** for better UX
- Create **custom widgets** when needed

## Git Commit Messages

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests after the first line

### Examples:
```
Add user export functionality

- Implement CSV export for users
- Add export button to user resource
- Include role information in export

Fixes #123
```

## Testing

Before submitting a pull request:

1. **Test manually** in the browser
2. **Check for errors** in the console
3. **Verify database** migrations work
4. **Test with different roles** if applicable
5. **Check responsive design**

## Documentation

- Update **README.md** if you change functionality
- Add **inline comments** for complex logic
- Update **API documentation** if applicable
- Include **usage examples** for new features

## Feature Requests

We welcome feature requests! When suggesting a feature:

1. **Check existing issues** first
2. **Describe the problem** it solves
3. **Provide examples** of how it would work
4. **Consider alternatives** and trade-offs

## Questions?

Feel free to open an issue with the `question` label if you need help or clarification.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing! 🎉
