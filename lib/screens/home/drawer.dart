

import 'package:first_webapp/widgets/nav_logo.dart';
import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appProvider = Provider.of<AppProvider>(context);
    // final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      // width: MediaQuery.of(context).size.width*0.75,
      child: Material(
        // color: appProvider.isDark ? Colors.grey[900] : Colors.white,
        color: Colors.blueGrey.shade50,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Color(0xFF243447),
                  // color: Colors.deepPurple,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 12.0,
                      left: 8.0,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor:Colors.blueGrey.shade50 ,
                        child: IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                                size: 12,
                                color: Color(0xFF243447),
                            )
                        )
                        // BackButton(
                        //   color: Color(0xFF243447),
                        // ),
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: Center(child: NavBarLogo()),
                    ),
                  ],
                ),
              ),
              const Divider(),
              SwitchListTile(
                secondary: const Icon(
                  Icons.light_mode,
                  color: Colors.deepOrange,
                ),
                title: const Text(
                  "Dark Mode",
                ),
                activeColor: Colors.deepOrange,
                value: true,
                onChanged: (value){},
                inactiveTrackColor: Colors.grey,
              ),
              const Divider(),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              // ...NavBarUtils.names.asMap().entries.map(
              //       (e) => Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: MaterialButton(
              //       hoverColor: AppTheme.c!.primary!.withAlpha(70),
              //       onPressed: () {
              //         scrollProvider.scrollMobile(e.key);
              //         Navigator.pop(context);
              //       },
              //       child: ListTile(
              //         leading: Icon(
              //           NavBarUtils.icons[e.key],
              //           color: AppTheme.c!.primary,
              //         ),
              //         title: Text(
              //           e.value,
              //           style: AppText.l1,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: MaterialButton(
              //     hoverColor: AppTheme.c!.primary!.withAlpha(150),
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(5.0),
              //         side: BorderSide(color: AppTheme.c!.primary!)),
              //     onPressed: () => openURL(StaticUtils.resume),
              //     child: const ListTile(
              //       leading: Icon(
              //         Icons.book,
              //         color: Colors.red,
              //       ),
              //       title: Text(
              //         'RESUME',
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}