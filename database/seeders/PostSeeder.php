<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = User::all();

        $posts = [
            [
                'title' => 'Getting Started with Laravel 11',
                'content' => 'Laravel 11 brings exciting new features and improvements to the framework. In this post, we explore the key changes and how to get started with your first Laravel 11 project.',
                'status' => 'published',
            ],
            [
                'title' => 'Building Admin Panels with Filament',
                'content' => 'Filament is a powerful admin panel framework for Laravel. Learn how to create beautiful, functional admin interfaces in minutes.',
                'status' => 'published',
            ],
            [
                'title' => 'Understanding Role-Based Access Control',
                'content' => 'RBAC is essential for managing user permissions in modern applications. This guide covers implementing RBAC using Spatie Permission package.',
                'status' => 'published',
            ],
            [
                'title' => 'Docker for Laravel Development',
                'content' => 'Containerize your Laravel applications with Docker for consistent development environments across your team.',
                'status' => 'published',
            ],
            [
                'title' => 'Advanced Eloquent Techniques',
                'content' => 'Master advanced Eloquent ORM features including eager loading, query scopes, and custom collections.',
                'status' => 'draft',
            ],
            [
                'title' => 'API Development Best Practices',
                'content' => 'Learn industry best practices for building robust, scalable APIs with Laravel.',
                'status' => 'draft',
            ],
            [
                'title' => 'Testing Laravel Applications',
                'content' => 'Comprehensive guide to testing your Laravel applications with PHPUnit and Pest.',
                'status' => 'published',
            ],
            [
                'title' => 'Optimizing Laravel Performance',
                'content' => 'Tips and tricks for improving the performance of your Laravel applications.',
                'status' => 'published',
            ],
            [
                'title' => 'Laravel Queue Management',
                'content' => 'Handle background jobs efficiently with Laravel queues and workers.',
                'status' => 'draft',
            ],
            [
                'title' => 'Building Real-time Features with Laravel',
                'content' => 'Implement real-time notifications and updates using Laravel Echo and WebSockets.',
                'status' => 'published',
            ],
        ];

        foreach ($posts as $postData) {
            Post::create([
                'title' => $postData['title'],
                'slug' => Str::slug($postData['title']),
                'content' => $postData['content'],
                'status' => $postData['status'],
                'user_id' => $users->random()->id,
            ]);
        }
    }
}
