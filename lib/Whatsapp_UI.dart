import'package:flutter/material.dart';
class Whatsapp_UI extends StatefulWidget {
  const Whatsapp_UI({super.key});

  @override
  State<Whatsapp_UI> createState() => _Whatsapp_UIState();
}

class _Whatsapp_UIState extends State<Whatsapp_UI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('WhatsApp')),
          bottom: TabBar(
            indicatorColor: Colors.redAccent.withOpacity(.9),
            indicatorWeight: 10,
            tabs: [
              Tab(
                child:  Icon(((Icons.camera_alt))),
              ),
              Tab(
                child: Icon(Icons.chat),
              ),
              Tab(child:  Text('Status'),
              ),

              Tab(
                child: Icon(Icons.call),
              )
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
              icon:Icon(Icons.more_horiz_outlined),
              itemBuilder: (context)=>const[
                PopupMenuItem( value:1,child: Text('New Group')),
                PopupMenuItem(value:2,child: Text('Setting')),
                PopupMenuItem(value:3,child: Text('LogOut')),



              ],
            )
          ],
        ),
        body: TabBarView(
            children:[
              Text('Camera'),
              ListView.builder(
                  itemCount: 10000,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                      ),
                      title: Text('Zain Ali'),
                      subtitle: Text('Bsc Computer Engineer'),
                      trailing: Text('3:10 PM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://st.depositphotos.com/3433891/54143/i/600/depositphotos_541430092-stock-photo-young-caucasian-man-isolated-blue.jpg'),
                        ),
                        title: Text('Ahtesham Ali'),
                        subtitle: Text('3:10 Am'),

                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://st.depositphotos.com/3433891/54143/i/600/depositphotos_541430092-stock-photo-young-caucasian-man-isolated-blue.jpg'),
                      ),
                      title: Text('Ahtesham Ali'),
                      subtitle: Text(index/2==0?'Miseed Audio call--':'Missed Video call__'),
                      trailing: Icon(index/2==0?Icons.phone:Icons.video_call),
                    );
                  })

            ]
        ),
      ),
    );
  }
}
