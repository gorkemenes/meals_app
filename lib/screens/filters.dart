import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/provider/filters_provider.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Your Filters"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: Text(
              "Gluten-Free",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: const Text("Only include gluten-free meals."),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 14, right: 32),
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (newValue) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, newValue);
            },
          ),
          SwitchListTile(
            tileColor: Theme.of(context).colorScheme.background,
            title: Text(
              "Lactose-Free",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: const Text("Only include lactose-free meals."),
            contentPadding: const EdgeInsets.only(left: 14, right: 32),
            activeColor: Theme.of(context).colorScheme.tertiary,
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (newValue) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, newValue);
            },
          ),
          SwitchListTile(
            tileColor: Theme.of(context).colorScheme.background,
            title: Text(
              "Vegetarian",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: const Text("Only include vegetarian meals."),
            contentPadding: const EdgeInsets.only(left: 14, right: 32),
            activeColor: Theme.of(context).colorScheme.tertiary,
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (newValue) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, newValue);
            },
          ),
          SwitchListTile(
            tileColor: Theme.of(context).colorScheme.background,
            title: Text(
              "Vegan",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: const Text(
              "Only include vegan meals.",
            ),
            contentPadding: const EdgeInsets.only(left: 14, right: 32),
            activeColor: Theme.of(context).colorScheme.tertiary,
            value: activeFilters[Filter.vegan]!,
            onChanged: (newValue) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, newValue);
            },
          )
        ],
      ),
    );
  }
}
