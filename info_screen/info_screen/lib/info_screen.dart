import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:info_screen/globs.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              'About Us',
              style: TextStyle(
                color: Globs.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            floating: true,
            actions: [
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/logout.png'),
              ),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/img.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Image.asset('assets/pfp.png'),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Text(
                    Globs.aboutUs,
                    textAlign: TextAlign.center,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: InfoCard(
                        title: data[index]['title'] as String,
                        imageUrl: data[index]['imageUrl'] as String,
                        textData: data[index]['textData'] as String,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const data = [
  {
    "title": "Our Story",
    "imageUrl": "assets/our_story.png",
    "textData":
        "FriendMe was born out of a simple, yet profound realization: despite being more connected than ever, many of us still grapple with feelings of isolation. We saw a need for a platform that facilitates non-romantic social connections, and we rose to the challenge. Our mission is to help individuals like you - whether you're a young professional, a recent divorcee, or a student - find authentic friendships based on shared interests."
  },
  {
    "title": "Our Vision",
    "imageUrl": "assets/our_vision.png",
    "textData":
        "We envision a world where no one has to feel alone. We believe in the power of friendship and its ability to bring joy, support, and a sense of belonging. Our sophisticated matching algorithm is designed with you in mind, connecting you with individuals who share your interests and fostering genuine connections and meaningful conversations."
  },
  {
    "title": "Our Team",
    "imageUrl": "assets/our_team.png",
    "textData":
        "Our team is a diverse group of tech enthusiasts, social butterflies, and problem solvers who are passionate about bringing people together. We're dedicated to ensuring innovation and user satisfaction, and we're always looking for ways to improve your experience on our platform."
  },
  {
    "title": "Our Approach",
    "imageUrl": "assets/our_approach.png",
    "textData":
        "We operate on a dual-tier membership model, catering to both free users and premium subscribers. We believe in providing a quality experience for all our users, which is why we offer a range of features to enhance your friend-finding journey. From our interest-based matching system to our local event-suggestion feature, we've got you covered."
  },
  {
    "title": "Our Promise",
    "imageUrl": "assets/our_promise.png",
    "textData":
        "At friendMe, your safety and privacy are our top priorities. We're committed to providing a secure environment for you to cultivate friendships, and we have stringent data privacy and user safety protocols in place. We're here to support you every step of the way as you build your network of friends."
  },
  {
    "title": "Join Us",
    "imageUrl": "assets/join_us.png",
    "textData":
        "We invite you to join our community and start making meaningful connections today. Whether you're looking to expand your social circle, find a workout buddy, or meet new people in your area, friendMe is here to help. Let's combat loneliness together, one friend at a time."
  }
];
