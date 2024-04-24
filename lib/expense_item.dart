import 'package:expenses_tracker/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal:12,
        vertical: 10,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    '\$${expense.amount.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  // spacer is used to take all the space
                  Spacer(),
                  Row(
                    children: [
                      Icon(categoryItems[expense.category]),
                      SizedBox(width: 4),
                      Text(
                        expense.formattedDate,
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                  // const SizedBox(width: 8),
                  // Text(expense.category.toString()),
                ],
              )
              // Text(expense.amount.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
