import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  bool isYouthCalendar = true; // true for Youth Calendar, false for Main Wing Calendar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Calendar'),
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
              // Toggle Section
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Calendar Type:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF034C36),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF034C36),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isYouthCalendar = true;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: isYouthCalendar ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Text(
                                'Youth',
                                style: TextStyle(
                                  color: isYouthCalendar ? const Color(0xFF034C36) : Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isYouthCalendar = false;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: !isYouthCalendar ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Text(
                                'Main Wing',
                                style: TextStyle(
                                  color: !isYouthCalendar ? const Color(0xFF034C36) : Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Calendar Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: isYouthCalendar ? _buildYouthCalendar() : _buildMainWingCalendar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildYouthCalendar() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Youth Calendar Events',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF034C36),
                ),
              ),
              SizedBox(height: 16),
              _CalendarEvent(
                date: 'Jan 15, 2026',
                title: 'Youth Fellowship Meeting',
                time: '6:00 PM',
              ),
              SizedBox(height: 8),
              _CalendarEvent(
                date: 'Jan 22, 2026',
                title: 'Youth Bible Study',
                time: '7:00 PM',
              ),
              SizedBox(height: 8),
              _CalendarEvent(
                date: 'Jan 29, 2026',
                title: 'Youth Worship Night',
                time: '6:30 PM',
              ),
              SizedBox(height: 8),
              _CalendarEvent(
                date: 'Feb 5, 2026',
                title: 'Youth Outreach Program',
                time: '10:00 AM',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMainWingCalendar() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Main Wing Calendar Events',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF034C36),
                ),
              ),
              SizedBox(height: 16),
              _CalendarEvent(
                date: 'Jan 12, 2026',
                title: 'Sunday Service',
                time: '9:00 AM',
              ),
              SizedBox(height: 8),
              _CalendarEvent(
                date: 'Jan 19, 2026',
                title: 'Monthly Prayer Meeting',
                time: '6:00 PM',
              ),
              SizedBox(height: 8),
              _CalendarEvent(
                date: 'Jan 26, 2026',
                title: 'Church Conference',
                time: '10:00 AM',
              ),
              SizedBox(height: 8),
              _CalendarEvent(
                date: 'Feb 2, 2026',
                title: 'Community Outreach',
                time: '8:00 AM',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CalendarEvent extends StatelessWidget {
  final String date;
  final String title;
  final String time;

  const _CalendarEvent({
    required this.date,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF034C36).withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF034C36),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF034C36),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 14,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Icon(
                      Icons.access_time,
                      size: 14,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
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
  }
}