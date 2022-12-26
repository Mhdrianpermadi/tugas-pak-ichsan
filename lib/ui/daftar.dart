// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
  const Daftar({Key? key}) : super(key: key);

  // final DaftarType type;

  @override
  Widget build(BuildContext context) {
    // final localizations = GalleryLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('anggota kelompok 3'),
      ),
      body: Scrollbar(
        child: ListView(
          restorationId: 'list_demo_list_view',
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('1')),
                ),
                title: Text(
                  'Muhammad Rian Permadi',
                ),
                subtitle: Text('1914050055')),
            ListTile(
                leading: ExcludeSemantics(
                  child: CircleAvatar(child: Text('2')),
                ),
                title: Text(
                  'Rahmat Khalisin',
                ),
                subtitle: Text('1914050003'))
            // for (int index = 1; index < 21; index++)
            //   ListTile(
            //       leading: ExcludeSemantics(
            //         child: CircleAvatar(child: Text('$index')),
            //       ),
            //       title: Text(
            //         ' localizations.demoBottomSheetItem(index)',
            //       ),
            //       subtitle: Text('localizations.demoListsSecondary')),
          ],
        ),
      ),
    );
  }
}
