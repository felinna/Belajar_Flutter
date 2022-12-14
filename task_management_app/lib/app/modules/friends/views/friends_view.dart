import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myfriends.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController>{

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
          !context.isPhone 
            ? const Expanded(
              flex: 2,
              child: SideBar(),
            )
          : const SizedBox(),

          Expanded(
          flex: 15,
          child: Column(children: [
            !context.isPhone  
            ? const header()
            : Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  }, 
                  icon: const Icon(
                    Icons.menu, 
                    color: AppColors.primaryText,
                    )
                  ),
                  const SizedBox(
                    width: 15,
                    ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                        Text(
                        'Task Management', style: TextStyle(fontSize: 20, color: AppColors.primaryText),
                        ),
                        Text(
                        'Manage Task made easy with friends', 
                        style: TextStyle(fontSize: 15 , color: AppColors.primaryText),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.notifications, 
                    color: AppColors.primaryText, 
                    size: 30,
                  ),
                  const SizedBox(
                    width: 15,
                    ),
                  ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: const CircleAvatar(backgroundColor: Colors.amber, radius: 25, foregroundImage: 
                          NetworkImage('https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  )
                ],
              ),
            ),
            //content / isi page / screen
            Expanded(child: Container(
              padding: !context.isPhone 
                    ? const EdgeInsets.all(50)
                    : const EdgeInsets.all(20),
                margin: !context.isPhone 
                    ? const EdgeInsets.all(10)
                    : const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: !context.isPhone 
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(30),
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    'People You May Know', 
                  style: 
                  TextStyle(fontSize: 25, 
                    color: AppColors.primaryText),
                  ),
                  SizedBox(
                    height: 200,
                    child: 
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        clipBehavior: Clip.antiAlias,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              ClipRRect(
                                  borderRadius: 
                                      BorderRadius.circular(30),
                                  child: const Image(
                                    image: 
                                      NetworkImage('https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 35,
                                  child: Text(
                                    'Sindya', 
                                    style: TextStyle(color: Colors.white),
                                  ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                  child: SizedBox(
                                    height: 36,
                                    width: 36,
                                    child: ElevatedButton(
                                    onPressed: () {}, 
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: 
                                        BorderRadius.circular(50),
                                        )
                                    ),
                                child: Icon(Icons.add_circle_outline),
                                ),
                                  ),
                              )
                            ],
                          ),
                        );
                        },
                      ),
                    ),
                  Myfriends(),
                  ],
                ),
              ),
            ), 
          ]),
          )
        ],
      ),
    );
  }
}
