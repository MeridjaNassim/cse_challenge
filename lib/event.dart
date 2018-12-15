import 'package:flutter/material.dart';
import './ui/TextTitle.dart';
import './ui/FollowButton.dart';
import './ui/Description.dart';
import './Descriptors/EventDescriptors.dart';
import './ui/CustomInkWell.dart';
class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text("Events"),
        centerTitle: true,
      ),
      body: EventList(),
    );
  }
}

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int count) {
        return EventItem(count);
      },
      itemCount: 3,
    );
  }
}

class EventItem extends StatelessWidget {
  final List<EventDescriptor> list = [
    EventDescriptor("Leapfrog Hack", 'Main Hackathon'),
    EventDescriptor("Startup Comp", 'Challenge'),
    EventDescriptor("HackIT", "First Hackathon in ESI and Algeria")
  ];
  final int count;
  EventItem(this.count);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Material(
        color: Colors.white,
        elevation: 2,
        child: Row(
          children: <Widget>[
            Material(
              elevation: 4,
              child: Container(
                child: Icon(
                  Icons.add_a_photo,
                  size: 60,
                ),
                margin: EdgeInsets.all(4.0),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child:Column(
                children: <Widget>[
                  TextTitle(list[count].title),
                  Description(list[count].description),
                  FollowButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

