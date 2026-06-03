import 'package:flutter/material.dart';
import '../models/spend_models.dart';
import '../widgets/spend_widgets.dart';

/// Main Spend Summary screen
class SpendSummaryScreen extends StatelessWidget {
  const SpendSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = MockDataProvider.getCategories();
    final transactions = MockDataProvider.getRecentTransactions();
    final totalSpend = MockDataProvider.getTotalMonthlySpend();
    final trendPercentage = MockDataProvider.getTrendPercentage();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Spend Summary',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              // Notification action
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Notifications')));
            },
            icon: const Icon(Icons.notifications_outlined),
            tooltip: 'Notifications',
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpendHeaderCard(
              totalSpend: totalSpend,
              trendPercentage: trendPercentage,
              monthLabel: 'June 2026',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Categories',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: CategoriesScrollSection(categories: categories),
            ),
            RecentTransactionsSection(transactions: transactions),
            const SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: const SpendGradientFab(),
    );
  }
}
