import 'package:flutter/cupertino.dart';

class Questions {
  final String? title;
  final String? questionText;
  final String? questionAnswer;
  final Color? questionColor;

  Questions(
      {this.questionText, this.questionAnswer, this.title, this.questionColor});
}

var questions = [
  Questions(
    title: 'Question 1',
    questionText: 'What company is recognized as Meta?',
    questionAnswer:
        "Meta Platforms, Inc., also known as Meta and formerly known as Facebook, Inc., is a multinational technology conglomerate based in Menlo Park, California. The company is the parent organization of Facebook, Instagram, and WhatsApp, among other subsidiaries. Meta is one of the world's most valuable companies and is considered one of the Big Tech companies in U.S. information technology, alongside Amazon, Google (Alphabet Inc), Apple, and Microsoft. The company generates a substantial share of its revenue from the sale of advertisement placements to marketers.",
    questionColor: const Color(0xFF66369C),
  ),
  Questions(
    title: 'Question 2',
    questionText:
        'List the order of academic degree we have with order of hierarchy?',
    questionAnswer:
        '''List of certificate/degree issued by Nigeria institutions and order of hierarchy\n
NCE
ND
HND
BSC
PGD
MSc
PHD''',
    questionColor: const Color(0xFF66369C),
  ),
  Questions(
    title: 'Question 3',
    questionText:
        'What is the full meaning of the following... \nNCE,\nMSc,\nPHD',
    questionAnswer:
        '''NCE = Nigeria Certificate Education is a special A-Level grade Course intended for Secondary school leavers or their equivalent.
    MSc = it is a second degree after bsc and it’s known as master of science. Having MSc is a big boast to all BSC holder and it’s above bsc.
    PHD = This is the highest level of academic degree that can be obtained by anyone. It will take 6 years to get a PHD. however you can add more juice to it by obtaining professional certification from other fields''',
    questionColor: const Color(0xFF66369C),
  ),
  Questions(
    title: 'Question 4',
    questionText:
        'What is the full meaning of the following... \nND,\nBSC,\nPGD',
    questionAnswer: '''
    ND = issued by any recognized polytechnic in Nigeria and it the lowest certificate issue by polytechnic.
    BSC = bachelor of science BSC is issued by Nigeria university.
    PGD = PGD is a postgraduate qualification awarded after a university degree and polytechnic graduates can also apply for pgd.''',
    questionColor: const Color(0xFF977BB6),
  ),
  Questions(
    title: 'Question 5',
    questionText: 'Who is the creator of Facebook?',
    questionAnswer: 'Mark Zuckerberg',
    questionColor: const Color(0xFF977BB6),
  ),
  Questions(
    title: 'Question 6',
    questionText:
        'How many plastic chairs do we what presently as we are seated\n(10 seconds)?',
    questionAnswer: '49 chairs',
    questionColor: const Color(0xFF977BB6),
  ),
  Questions(
    title: 'Question 7',
    questionText: 'What is the name of our guest speaker?',
    questionAnswer: 'Ambassador Toba Bamidele Emmanuel',
    questionColor: const Color(0xFFCFC8DA),
  ),
  Questions(
    title: 'Question 8',
    questionText: 'What is LinkedIn and what is it used for?',
    questionAnswer:
        '''LinkedIn is the world's largest professional network on the internet. You can use LinkedIn to find the right job or internship, connect and strengthen professional relationships, and learn the skills you need to succeed in your career. You can access LinkedIn from a desktop, LinkedIn mobile app, mobile web experience, or the LinkedIn Lite Android mobile app.

A complete LinkedIn profile can help you connect with opportunities by showcasing your unique professional story through experience, skills, and education.

You can also use LinkedIn to organize offline events, join groups, write articles, post photos and videos, and more.''',
    questionColor: const Color(0xFFCFC8DA),
  ),
  Questions(
    title: 'Question 9',
    questionText:
        'Can you touch your elbow with your tongue? \n(Yes or No [4 seconds])',
    questionAnswer: 'No',
    questionColor: const Color(0xFFCFC8DA),
  ),
  Questions(
    title: 'Question 10',
    questionText: 'What is Elon Musk?',
    questionAnswer:
        'Elon Musk, (born June 28, 1971, Pretoria, South Africa), South African-born American entrepreneur who co-founded the electronic-payment firm PayPal and formed SpaceX, maker of launch vehicles and spacecraft. He was also one of the first significant investors in, as well as chief executive officer of, the electric car manufacturer Tesla.',
    questionColor: const Color(0xFFF6D7A5),
  ),
  Questions(
    title: 'Question 11',
    questionText: 'What can one catch that is not thrown?',
    questionAnswer: 'Cold',
    questionColor: const Color(0xFFF6D7A5),
  ),
  Questions(
    title: 'Question 12',
    questionText: 'What is Microsoft Word used for?',
    questionAnswer: '''What is MS Word?

Used to make professional-quality documents, letters, reports, etc., MS Word is a word processor developed by Microsoft. It has advanced features which allow you to format and edit your files and documents in the best possible way. ''',
    questionColor: const Color(0xFFF6D7A5),
  ),
  Questions(
    title: 'Question 13',
    questionText: 'How many entry/exit do we have in this church?',
    questionAnswer: '5',
    questionColor: const Color(0xFFBE9553),
  ),
  Questions(
    title: 'Question 14',
    questionText:
        'What are the two most commonest type of smartphone operating system?',
    questionAnswer: 'Android and iOS',
    questionColor: const Color(0xFFBE9553),
  ),
  Questions(
    title: 'Question 15',
    questionText: 'What is the shortest verse in the bible?',
    questionAnswer:
        '''“Jesus Wept,”  found in the Gospel of John, chapter 11, verse 35. It is the shortest verse in English, with only 9 letters.

Second Shortest Bible Verse in English Luke 20:30 “and the second,” with only 12 letters in English.
Third Shortest Verse in English 1 Thessalonians 5:16, “rejoice always,”  with only 13 letters in English.''',
    questionColor: const Color(0xFFBE9553),
  ),
  Questions(
    title: 'Question 16',
    questionText: 'Mention 4 bible translations that ypu know?',
    questionAnswer: '''Here are some bible translations:\n

1885 The Revised Version (RV)
1901 American Standard Version (ASV)
1952 Revised Standard Version (RSV)
1971  New American Standard Bible (NASB)
1978 New International Version (NIV)
1982 New King James Version (NKJV)
1989 New Revised Standard Version (NRSV)
2001 English Standard Version (ESV)
2004 Holman Christian Standard (HCSB)
2006 New English Translation (NET)
2014 Modern English Version (MEV)
2017 Christian Standard Bible (CSB)
The Message (MSG)''',
    questionColor: const Color(0xFFF4D26E),
  ),
  Questions(
    title: 'Question 17',
    questionText: 'What is your age?',
    questionAnswer: 'I am 25',
    questionColor: const Color(0xFFF4D26E),
  ),
  Questions(
    title: 'Question 18',
    questionText: 'What is the full meaning of SWOT?',
    questionAnswer: 'SWOT (strengths, weaknesses, opportunities, and threats)',
    questionColor: const Color(0xFFF4D26E),
  ),
  Questions(
    title: 'Question 19',
    questionText: 'What is the full meaning of SMART?',
    questionAnswer: '''S - Specific
    M - Measurable
    A - Attainable/Achievable
    R - Relevant
    T - Time-bound''',
    questionColor: const Color(0xFFFACB3E),
  ),
];
