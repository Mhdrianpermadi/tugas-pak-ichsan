// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:aplikasi_flutter_rian/ui/daftar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

class KolomNavigasiSamping extends StatefulWidget {
  const KolomNavigasiSamping({Key? key}) : super(key: key);

  @override
  State<KolomNavigasiSamping> createState() => _KolomNavigasiSampingState();
}

class _KolomNavigasiSampingState extends State<KolomNavigasiSamping>
    with RestorationMixin {
  final RestorableInt _selectedIndex = RestorableInt(0);

  @override
  String get restorationId => 'nav_rail_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedIndex, 'selected_index');
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final localization = GalleryLocalizations.of(context)!;
    // final destinationFirst = localization.demoNavigationRailFirst;
    // final destinationSecond = localization.demoNavigationRailSecond;
    // final destinationThird = localization.demoNavigationRailThird;
    final selectedItem = <String>[
      'destinationFirst',
      'destinationSecond',
      'destinationThird'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'uas aplikasi mobile',
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
            leading: FloatingActionButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Daftar())));
              },
              child: const Icon(Icons.add),
            ),
            selectedIndex: _selectedIndex.value,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex.value = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: const Icon(
                  Icons.favorite_border,
                ),
                selectedIcon: const Icon(
                  Icons.favorite,
                ),
                label: Text(
                  'destinationFirst',
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  Icons.bookmark_border,
                ),
                selectedIcon: const Icon(
                  Icons.book,
                ),
                label: Text(
                  'destinationSecond',
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  Icons.star_border,
                ),
                selectedIcon: const Icon(
                  Icons.star,
                ),
                label: Text(
                  'destinationThird',
                ),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: Text(
                selectedItem[_selectedIndex.value],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
