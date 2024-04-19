import 'package:flutter/material.dart';

class Globs {
  static final String aboutUs =
      "Welcome to friendMe, your personal companion in the journey of making new friends. We are not just an app but a community that understands the importance of genuine, platonic relationships in a world where lonliness can often feel overwhelming.";
  static final String ourStory =
      "FriendMe was born out of a simple, yet profound realization: despite being more connected than ever, many of us still grapple with feelings of isolation. We saw a need for a platform that facilitates non-romantic social connections, and we rose to the challenge. Our mission is to help individuals like you - whether you're a young professional, a recent divorcee, or a student - find authentic friendships based on shared interests.";
  static final String ourVision =
      "We envision a world where no one has to feel alone. We believe in the power of friendship and its ability to bring joy, support, and a sense of belonging. Our sophisticated matching algorithm is designed with you in mind, connecting you with individuals who share your interests and fostering genuine connections and meaningful conversations.";
  static final String ourTeam =
      "Our team is a diverse group of tech enthusiasts, social butterflies, and problem solvers who are passionate about bringing people together. We're dedicated to ensuring innovation and user satisfaction, and we're always looking for ways to improve your experience on our platform.";
  static final String ourApproach =
      "We operate on a dual-tier membership model, catering to both free users and premium subscribers. We believe in providing a quality experience for all our users, which is why we offer a range of features to enhance your friend-finding journey. From our interest-based matching system to our local event-suggestion feature, we've got you covered.";
  static final String ourPromise =
      "At friendMe, your safety and privacy are our top priorities. We're committed to providing a secure environment for you to cultivate friendships, and we have stringent data privacy and user safety protocols in place. We're here to support you every step of the way as you build your network of friends.";
  static final String joinUs =
      "We invite you to join our community and start making meaningful connections today. Whether you're looking to expand your social circle, find a workout buddy, or meet new people in your area, friendMe is here to help. Let's combat loneliness together, one friend at a time.";
  static final Color primaryColor = Color.fromARGB(255, 6, 52, 82);
  static final Color secondaryColor = Color.fromARGB(255, 99, 146, 173);
  static final Color fillColor = Color.fromARGB(255, 6, 52, 82);
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.textData,
  });

  final String title;
  final String imageUrl;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Image.asset(
            height: 60,
            imageUrl,
            filterQuality: FilterQuality.high,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: Globs.secondaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            textData,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

