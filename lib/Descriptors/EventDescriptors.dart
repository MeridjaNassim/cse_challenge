class EventDescriptor {

  final String title;
  final String description;
  EventDescriptor(this.title,this.description);
}
class EventDescriptors{
  static final List<EventDescriptor> list =[
    EventDescriptor("Leapfrog Hack", 'Leapfrog Hack is a Global Hackathon focused on the leverage of leapfrog technologies, ... and technology summit 2018 By CSE Club and the wilaya of Algiers'),
    EventDescriptor("Startup Competition", 'Startup Competition is a challenge for youth starting companies to expose their projects'),
    EventDescriptor("HackIT", "Hack IT is the first Hackathon in the Higher National School of Computer ... country will be gathered in the first school of Algeria to learn about new technologies")
  ];

}