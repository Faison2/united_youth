import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  final List<Map<String, dynamic>> events = const [
    {
      'name': 'Youth Conference 2025',
      'date': '14-16 December 2025',
      'time': '9:00 AM - 6:00 PM',
      'location': 'To Be Announced',
      'description': 'Annual youth conference focused on spiritual growth, leadership development, and fellowship among young believers.',
      'organizer': 'Youth Ministry',
      'contact': 'Zulu +263 78 763 0761',
      'fee': 'USD 5',
      'capacity': '800 participants',
      'registrationDeadline': '10 December 2025',
      'image': Icons.groups,
      'category': 'Youth',
      'status': 'upcoming',
    },
    {
      'name': 'Christmas Service',
      'date': '25 December 2025',
      'time': '8:00 AM - 11:00 AM',
      'location': 'All Branches',
      'description': 'Special Christmas morning service celebrating the birth of Jesus Christ with carols, special music, and fellowship.',
      'organizer': 'Pastoral Team',
      'contact': '+263 4 123 4567',
      'fee': 'Free',
      'capacity': 'Open to all',
      'registrationDeadline': 'No registration required',
      'image': Icons.church,
      'category': 'Worship',
      'status': 'upcoming',
    },
    {
      'name': 'New Year Prayer Service',
      'date': '1 January 2026',
      'time': '6:00 AM - 8:00 AM',
      'location': 'All Branches',
      'description': 'Welcome the new year with prayer, worship, and dedication to God. A time of reflection and commitment.',
      'organizer': 'Prayer Ministry',
      'contact': '+263 4 123 4567',
      'fee': 'Free',
      'capacity': 'Open to all',
      'registrationDeadline': 'No registration required',
      'image': Icons.schedule,
      'category': 'Prayer',
      'status': 'upcoming',
    },
    {
      'name': 'Marriage Enrichment Seminar',
      'date': '14-15 February 2026',
      'time': '9:00 AM - 4:00 PM',
      'location': 'Bulawayo Branch',
      'description': 'A weekend seminar for married couples to strengthen their relationships through biblical principles and practical advice.',
      'organizer': 'Family Ministry',
      'contact': '+263 9 876 5432',
      'fee': 'USD 40 per couple',
      'capacity': '50 couples',
      'registrationDeadline': '10 February 2026',
      'image': Icons.favorite,
      'category': 'Family',
      'status': 'upcoming',
    },
    {
      'name': 'Easter Celebration',
      'date': '20 April 2026',
      'time': '7:00 AM - 12:00 PM',
      'location': 'All Branches',
      'description': 'Celebrate the resurrection of Jesus Christ with sunrise service, special music, and community breakfast.',
      'organizer': 'Worship Team',
      'contact': '+263 4 123 4567',
      'fee': 'Free',
      'capacity': 'Open to all',
      'registrationDeadline': 'No registration required',
      'image': Icons.wb_sunny,
      'category': 'Worship',
      'status': 'upcoming',
    },
    {
      'name': 'Leadership Training Workshop',
      'date': '10-12 May 2026',
      'time': '9:00 AM - 5:00 PM',
      'location': 'Mutare Branch',
      'description': 'Intensive leadership development program for church leaders and emerging leaders in ministry.',
      'organizer': 'Leadership Development',
      'contact': '+263 20 987 6543',
      'fee': 'USD 35',
      'capacity': '80 participants',
      'registrationDeadline': '5 May 2026',
      'image': Icons.psychology,
      'category': 'Training',
      'status': 'upcoming',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Events'),
        backgroundColor: const Color(0xFF034C36),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFBDCDCF),
              Color(0xFF034C36),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header Stats
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatCard('Total Events', '${events.length}'),
                    _buildStatCard('This Month', '${events.where((e) => e['date'].toString().contains('December')).length}'),
                  ],
                ),
              ),

              // Events List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ExpansionTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: _getCategoryColor(event['category']),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            event['image'],
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          event['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF034C36),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event['date'],
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: _getCategoryColor(event['category']).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                event['category'],
                                style: TextStyle(
                                  color: _getCategoryColor(event['category']),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  event['description'],
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    height: 1.4,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                _buildInfoRow(Icons.access_time, 'Time', event['time']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.location_on, 'Location', event['location']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.person, 'Organizer', event['organizer']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.phone, 'Contact', event['contact']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.attach_money, 'Fee', event['fee']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.group, 'Capacity', event['capacity']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.calendar_today, 'Registration Deadline', event['registrationDeadline']),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        _showEventDetails(context, event);
                                      },
                                      icon: const Icon(Icons.info_outline, size: 16),
                                      label: const Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF034C36),
                                        foregroundColor: Colors.white,
                                      ),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        _showRegistrationDialog(context, event);
                                      },
                                      icon: const Icon(Icons.app_registration, size: 16),
                                      label: const Text('Register'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        foregroundColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF034C36),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: const Color(0xFF034C36)),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF034C36),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ],
    );
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Youth':
        return Colors.orange;
      case 'Worship':
        return Colors.purple;
      case 'Prayer':
        return Colors.blue;
      case 'Family':
        return Colors.pink;
      case 'Training':
        return Colors.green;
      default:
        return const Color(0xFF034C36);
    }
  }

  void _showEventDetails(BuildContext context, Map<String, dynamic> event) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(event['image'], color: _getCategoryColor(event['category'])),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  event['name'],
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event['description'],
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 16),
                _buildInfoRow(Icons.access_time, 'Time', event['time']),
                const SizedBox(height: 8),
                _buildInfoRow(Icons.location_on, 'Location', event['location']),
                const SizedBox(height: 8),
                _buildInfoRow(Icons.person, 'Organizer', event['organizer']),
                const SizedBox(height: 8),
                _buildInfoRow(Icons.attach_money, 'Fee', event['fee']),
                const SizedBox(height: 8),
                _buildInfoRow(Icons.group, 'Capacity', event['capacity']),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showRegistrationDialog(BuildContext context, Map<String, dynamic> event) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Register for ${event['name']}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Registration fee: ${event['fee']}'),
              const SizedBox(height: 8),
              Text('Deadline: ${event['registrationDeadline']}'),
              const SizedBox(height: 8),
              Text('Capacity: ${event['capacity']}'),
              const SizedBox(height: 16),
              const Text(
                'To register for this event, please contact the organizer using the phone number provided.',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Here you could implement actual registration logic
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Please call ${event['contact']} to register'),
                    backgroundColor: const Color(0xFF034C36),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF034C36),
                foregroundColor: Colors.white,
              ),
              child: const Text('Contact to Register'),
            ),
          ],
        );
      },
    );
  }
}