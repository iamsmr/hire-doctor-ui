import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            'Find Your\nConsultation',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.grey[900]),
          ),
          SizedBox(height: 20),
          TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search))),
          SizedBox(height: 20),
          Text(
            'Categories',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.grey[900]),
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                _buildCtegories(title: 'Adults', selected: true),
                _buildCtegories(title: 'Children', selected: false),
                _buildCtegories(title: 'Womens', selected: false),
                _buildCtegories(title: 'Mans', selected: false),
                _buildCtegories(title: 'Adults', selected: false),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 210,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                _buildCard(
                    bgColor: Color(0xffF08D55),
                    title: 'Cough &\nCold',
                    numberOfDoctors: 12,
                    image: 'https://cdn.sanity.io/images/0vv8moc6/hcp'
                        'live/0ebb6a8f0c2850697532805d09d4ff10e838a74b-200x200.jpg?auto=format'),
                _buildCard(
                    bgColor: Colors.red[200],
                    title: 'Heart\nSpecialist',
                    numberOfDoctors: 17,
                    image: 'https://www.pinnaclecare.com/wp-content'
                        '/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394-300x425.jpg'),
                _buildCard(
                    bgColor: Colors.blue[200],
                    title: 'Cancer\nSpecialist',
                    numberOfDoctors: 4,
                    image:
                        'https://lh3.googleusercontent.com/proxy/xkFMuYeoN3VaHqGy_jqT_iHf6pQ'
                        'egPNhjHeggoBR38xD_YOZjBILB4qkSM4ooWp4UfO2ejCBD_VHx2MhJZA'),
                _buildCard(
                    bgColor: Colors.pink[200],
                    title: 'Diariya\nSpecialist',
                    numberOfDoctors: 5,
                    image:
                        'https://webcomicms.net/sites/default/files/clipart/172295/pics-doctor-172295-9291276.jpg'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Doctors',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.grey[900],
            ),
          ),
          SizedBox(height: 27),
          ListView(
            shrinkWrap: true,
            children: [
              _buildDoctorItems(
                  name: 'Dr. Stefeni Albert',
                  special: 'Heart Speailist',
                  image: 'https://encrypted'
                      '-tbn0.gstatic.co'
                      'm/images?q=tbn%3AANd9GcRTgw03Cvzc_B_lv491Y0kM_-t1vmHq7_WoKA&usqp=CAU')
            ],
          )
        ],
      ),
    );
  }

  _buildCtegories({String title, bool selected}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: selected ? Color(0xffF08D55) : null,
          borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
      child: Text(
        title,
        style: TextStyle(color: selected ? Colors.white : null),
      ),
    );
  }

  _buildCard({String title, int numberOfDoctors, Color bgColor, String image}) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 7),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title ?? '',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$numberOfDoctors Doctors',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 35,
            )
          ],
        ),
      ),
    );
  }

  _buildDoctorItems({String image, String name, String special}) {
    return Container(
      color: Color(0xffF08D55).withOpacity(.2),
      width: double.infinity,
      child: ListTile(
        leading: Container(
          height: 66,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffF08D55),
          ),
        ),
        subtitle: Text(
          special,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        trailing: FlatButton(
          color: Color(0xffF08D55),
          textColor: Colors.white,
          onPressed: () {},
          child: Text('Call'),
        ),
      ),
    );
  }
}
