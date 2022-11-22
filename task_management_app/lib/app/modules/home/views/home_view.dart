import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myTask.dart';
import 'package:task_management_app/app/utils/widget/myfriends.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';

import '../../../utils/widget/upcomingTask.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
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
                    SizedBox(
                      height: Get.height * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'My Task', 
                            style: 
                              TextStyle(
                                color: AppColors.primaryText, 
                                fontSize: 30,
                              ),
                            ),
                          SizedBox(
                            height: 20,
                          ),
                          //my task
                          MyTask(),
                        ],
                      ),
                    ),
                    !context.isPhone ? Expanded(
                      child: Row(                 
                        children: [
                          UpcomingTask(), 
                          Myfriends(), 
                        ],
                      ),
                    )
                    : UpcomingTask(),
                  ]),
                ),
              ), 
            ]),
            )
          ],
        ),
      ),
    );
  }
}



