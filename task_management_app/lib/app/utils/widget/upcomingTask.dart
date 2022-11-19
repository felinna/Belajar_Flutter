import 'package:flutter/material.dart';

import '../style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Task', 
              style: TextStyle(
                color: AppColors.primaryText, 
              fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: ListView(
              clipBehavior: Clip.antiAlias,
              //scrollDirection: Axis.vertical, 
              shrinkWrap: true, 
              children: [
                  Container(
                      height: 200, 
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20, 
                              foregroundImage: 
                                  NetworkImage('https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                                            
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20, 
                              foregroundImage: 
                                  NetworkImage('https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                              ),
                            ),
                            const Spacer(),
                            Container(
                                height: 25,
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: const Center(child: Text('100 %',
                                style: TextStyle(
                                color: AppColors.primaryText,
                                ),
                              ))
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(height: 25,
                          color: AppColors.primaryBg, 
                          width: 80, 
                          child: const Center(child: Text('10/10 Task')),
                          ),
                          const Text(
                            'Pemrograman Mobile', 
                              style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                            ),
                            const Text(
                            'Deadline 2 Hari Lagi', 
                              style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                            ),
                        ), 
                      ]),
                    ),                                                                                                                             
                  Container(
                      height: 200, 
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20, 
                              foregroundImage: 
                                  NetworkImage('https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                                            
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20, 
                              foregroundImage: 
                                  NetworkImage('https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM4fHxodW1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                              ),
                            ),
                            const Spacer(),
                            Container(
                                height: 25,
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: const Center(child: Text('100 %',
                                style: TextStyle(
                                color: AppColors.primaryText,
                              ),
                            ))
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(height: 25,
                          color: AppColors.primaryBg, 
                          width: 80, 
                          child: const Center(child: Text('10/10 Task')),
                          ),
                          const Text(
                            'Pemrograman Mobile', 
                              style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                            ),
                            const Text(
                            'Deadline 2 Hari Lagi', 
                              style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                            ),
                        ), 
                      ]),
                    ),                                                                                                                             
                ],
              ),
            ),
                                
          ],
        ),
      ),
    );
  }
}
