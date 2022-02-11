import 'package:flutter/material.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  _MessengerScreenState createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/210687569_2902149066765966_6962526109854394351_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=SxdRfBhchN0AX9ZQWPQ&_nc_ht=scontent.fcai19-5.fna&oh=00_AT8aDd4jCkKPjYrfpgVyADX5U4c9JRQejYQPVacnmeKtUg&oe=620C79B8'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const CircleAvatar(
                radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    size: 16.0,
                    color: Colors.white,
                  ),
              ),
          ),
          IconButton(
              onPressed: (){},
              icon: const CircleAvatar(
                radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    size: 16.0,
                    color: Colors.white,
                  ),
              ),
          ),
        ],
        titleSpacing: 20.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
             SizedBox(
               height: 100.0,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) => buildStoryItem(),
                   separatorBuilder: (context, index) => const SizedBox(
                     width: 15.0,
                   ),
                   itemCount: 10,
               ),
             ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildStoryItem() =>  SizedBox(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/210687569_2902149066765966_6962526109854394351_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=SxdRfBhchN0AX9ZQWPQ&_nc_ht=scontent.fcai19-5.fna&oh=00_AT8aDd4jCkKPjYrfpgVyADX5U4c9JRQejYQPVacnmeKtUg&oe=620C79B8'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const Text(
          'Muhammed Elhalfawy',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/210687569_2902149066765966_6962526109854394351_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=SxdRfBhchN0AX9ZQWPQ&_nc_ht=scontent.fcai19-5.fna&oh=00_AT8aDd4jCkKPjYrfpgVyADX5U4c9JRQejYQPVacnmeKtUg&oe=620C79B8'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(
        width: 15.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              'Muhammed Elhalfawy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children:  [
                const Expanded(
                  child: Text(
                    'Hello my is Muhamed Elhalfawy Hello my is Muhamed Elhalfawy Hello my is Muhamed Elhalfawy Hello my is Muhamed Elhalfawy ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                const Text(
                  '09:00 pm',
                ),
              ],
            ),
          ],
        ),
      ),

    ],
  );
}
