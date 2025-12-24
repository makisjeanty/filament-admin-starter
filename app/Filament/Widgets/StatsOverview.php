<?php

namespace App\Filament\Widgets;

use App\Models\User;
use App\Models\Post;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Total Users', User::count())
                ->description('All registered users')
                ->descriptionIcon('heroicon-m-users')
                ->color('success'),
            Stat::make('Total Posts', Post::count())
                ->description('All blog posts')
                ->descriptionIcon('heroicon-m-document-text')
                ->color('info'),
            Stat::make('Published Posts', Post::where('status', 'published')->count())
                ->description('Live on the site')
                ->descriptionIcon('heroicon-m-check-circle')
                ->color('success'),
            Stat::make('Draft Posts', Post::where('status', 'draft')->count())
                ->description('Awaiting publication')
                ->descriptionIcon('heroicon-m-pencil')
                ->color('warning'),
        ];
    }
}

