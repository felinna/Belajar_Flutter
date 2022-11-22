
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone ? Row(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const CircleAvatar(
                  backgroundColor: Colors.amber, 
                  radius: 150, 
                  foregroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                ),
              ),
            ),
        //SizedBox(width: 20,),
        Expanded(
          flex: 2,
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Text(
                'Sindya Elviana', 
                style: 
                  TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 40,
                  ),
                ),
              Text(
                'Sindya@gmail.com', 
                style: 
                  TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 16,
                  ),
                ),
            ],
          ),
        ),
        ],
      )
      : Center(
        child: Column(
            children: const [
              SizedBox(
                  height: 20,
              ),
              ClipRRect(
                child: CircleAvatar(
                  backgroundColor: Colors.amber, 
                  radius: 70, 
                  foregroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                ),
              ),
          SizedBox(
            height: 20,
            ),
          Text(
            'Sindya Elviana', 
            style: 
              TextStyle(
                color: AppColors.primaryText, 
                fontSize: 30,
              ),
            ),
          Text(
            'Sindya@gmail.com', 
            style: 
              TextStyle(
                color: AppColors.primaryText, 
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

