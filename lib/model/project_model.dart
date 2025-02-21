class Project {
  final String name;
  final String description;
  final String image;
  // final String link;
  Project(this.name, this.description, this.image,
  //  this.link
   );
}

List<Project> projectList = [
  Project(
    'Suhrd Emergency App',
    'Suhrd is your personal safety companion, designed to help you in critical situations when every second counts. With just one tap, the app immediately sends a distress signal with your location to your trusted contacts and emergency services.',
    'assets/images/suhrds.jpg',
   
  ),
  Project(
    'Sauda',
    'Sauda is a comprehensive stock market app designed to provide real-time market data, enabling users to monitor live stock prices, indices, and historicaldata for in-depth analysis. It allows users to create and manage multiple portfolios,track performance, and execute trades with various order types, all while receivinginstant notifications. The app offers customizable watchlists, advanced analyticstools, and curated news feeds to keep users informed about market trends andsignificant events.',
    'assets/images/sauda.jpg',
  ),
  Project(
      'Aksharam Academy',
      'Empower your learning journey with our Home Tuition Mobile App! Tailored to meet your unique educational needs, our app brings expert tutors to your doorstep. Say goodbye to learning gaps and hello to personalized academic success.',
      'assets/images/drona.jpg',
      ),
  Project(
      'LocalSpots',
      'Platform to find hidden spots across the region like Gmaps with Gmap API , spots will be added from the admin panel and users can see nearby spots and they can filter spots list. If spots suits for them they can see full details like Description, Hours of operation , Reviews and they can start navigation from Google Maps or Apple Maps',
      'assets/images/localspots.jpg',
      ),
  Project(
      'Jesta',
      'This project is for both patients and doctors. Where, patients can view listof hospitals and doctors near to their location and can choose best doctors and all type of diseases have doctor in app and we can consult through this application . And we can make appointments for video, audio ,chat messages with doctor Patients can able to download prescriptions, and provide reviews to doctors and hospitals.',
      'assets/images/jesta.jpg',
      ),

];
