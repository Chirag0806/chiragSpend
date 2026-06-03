/// Models for the Spend Summary feature

/// Represents an expense category
class Category {
  final String id;
  final String name;
  final String icon; // Unicode emoji or icon string
  final double amount;
  final int color; // Color value as integer

  const Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.amount,
    required this.color,
  });
}

/// Represents a single transaction
class Transaction {
  final String id;
  final String merchant;
  final String category;
  final String date;
  final double amount;
  final bool isDebit;
  final String icon; // Unicode emoji or icon string

  const Transaction({
    required this.id,
    required this.merchant,
    required this.category,
    required this.date,
    required this.amount,
    required this.isDebit,
    required this.icon,
  });
}

/// Mock data provider
class MockDataProvider {
  static List<Category> getCategories() {
    return const [
      Category(
        id: '1',
        name: 'Food',
        icon: '🍔',
        amount: 4250,
        color: 0xFFFF6B6B,
      ),
      Category(
        id: '2',
        name: 'Travel',
        icon: '✈️',
        amount: 8500,
        color: 0xFF4ECDC4,
      ),
      Category(
        id: '3',
        name: 'Shopping',
        icon: '🛍️',
        amount: 6200,
        color: 0xFFFFE66D,
      ),
      Category(
        id: '4',
        name: 'Bills',
        icon: '📋',
        amount: 3500,
        color: 0xFF95E1D3,
      ),
      Category(
        id: '5',
        name: 'Entertainment',
        icon: '🎬',
        amount: 1550,
        color: 0xFFA8E6CF,
      ),
      Category(
        id: '6',
        name: 'Health',
        icon: '💊',
        amount: 900,
        color: 0xFFFF8B94,
      ),
    ];
  }

  static List<Transaction> getRecentTransactions() {
    return const [
      Transaction(
        id: '1',
        merchant: 'Swiggy',
        category: 'Food',
        date: 'Today • 11:30 PM',
        amount: 420,
        isDebit: true,
        icon: '🍔',
      ),
      Transaction(
        id: '2',
        merchant: 'Amazon',
        category: 'Shopping',
        date: 'Yesterday • 02:15 PM',
        amount: 2499,
        isDebit: true,
        icon: '🛍️',
      ),
      Transaction(
        id: '3',
        merchant: 'Uber',
        category: 'Travel',
        date: 'Jun 2 • 08:45 AM',
        amount: 235,
        isDebit: true,
        icon: '✈️',
      ),
      Transaction(
        id: '4',
        merchant: 'Electricity Bill',
        category: 'Bills',
        date: 'Jun 1 • 10:00 PM',
        amount: 1200,
        isDebit: true,
        icon: '📋',
      ),
      Transaction(
        id: '5',
        merchant: 'Netflix',
        category: 'Entertainment',
        date: 'May 31 • 12:00 AM',
        amount: 549,
        isDebit: true,
        icon: '🎬',
      ),
      Transaction(
        id: '6',
        merchant: 'Pharmeasy',
        category: 'Health',
        date: 'May 30 • 06:30 PM',
        amount: 890,
        isDebit: true,
        icon: '💊',
      ),
      Transaction(
        id: '7',
        merchant: 'Salary Deposit',
        category: 'Income',
        date: 'May 29 • 09:00 AM',
        amount: 50000,
        isDebit: false,
        icon: '💰',
      ),
    ];
  }

  static double getTotalMonthlySpend() => 24500;

  static double getLastMonthSpend() => 21500;

  static double getTrendPercentage() {
    final current = getTotalMonthlySpend();
    final last = getLastMonthSpend();
    return ((current - last) / last) * 100;
  }
}
