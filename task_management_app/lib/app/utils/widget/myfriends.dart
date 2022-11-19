import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/routes/app_pages.dart';

import '../style/AppColors.dart';

class Myfriends extends StatelessWidget {
  const Myfriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'My Friend', 
                  style: TextStyle(
                    color: AppColors.primaryText, 
                  fontSize: 30,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.FRIENDS),
                  child: Text(
                    'More', 
                    style: TextStyle(
                      color: AppColors.primaryText, 
                    fontSize: 20,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryText,
                ),
                                
              ],
            ),
            const SizedBox(
              height: 20,
            ),
      
            SizedBox(
              height: 400, 
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: 
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, 
                      crossAxisSpacing: 20, 
                      mainAxisSpacing: 20
                  ), 
                itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: 
                            BorderRadius.circular(100),
                        child: const CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 55, 
                        foregroundImage: 
                            NetworkImage('https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                          ),
                        ),
                        const Text('Sindya Elviana', 
                          style: TextStyle(
                              color: AppColors.primaryText),
                        ),
                      ],
                    );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

