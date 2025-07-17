import 'package:flutter/material.dart';

class BranchesPage extends StatelessWidget {
  const BranchesPage({super.key});

  final List<Map<String, dynamic>> branches = const [
    {
      'name': 'Norton Central Branch',
      'location': 'Norton, Zimbabwe',
      'pastor': 'Mr T Tauro',
      'members': 150,
      'established': '2024',
      'phone': '+263 77 664 1326',
    },
    {
      'name': 'Budiro Branch',
      'location': 'Harare, Zimbabwe',
      'pastor': 'Mr W Mushipe',
      'members': 120,
      'established': '2024',
      'phone': '+263 71 755 2827',
    },
    {
      'name': 'Shamva Wadzanai Branch',
      'location': 'Mutare, Zimbabwe',
      'pastor': 'Rev. David Chigumira',
      'members': 85,
      'established': '2005',
      'phone': '+263 20 987 6543',
    },
    {
      'name': 'Chakonda Branch',
      'location': 'Gweru, Zimbabwe',
      'pastor': 'Rev. Sarah Moyo',
      'members': 95,
      'established': '2008',
      'phone': '+263 54 321 9876',
    },
    {
      'name': 'Bindura Urban Branch',
      'location': 'Masvingo, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Bindura Rural Branch',
      'location': 'Masvingo, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Manhodndo Branch',
      'location': 'Masvingo, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
    {
      'name': 'Muchura Branch',
      'location': 'Masvingo, Zimbabwe',
      'pastor': 'Rev. Peter Sibanda',
      'members': 70,
      'established': '2010',
      'phone': '+263 39 654 3210',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Branches'),
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
                    _buildStatCard('Total Branches', '${branches.length}'),
                    _buildStatCard('Total Members', '${branches.fold(0, (sum, branch) => sum + (branch['members'] as int))}'),
                  ],
                ),
              ),

              // Branches List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: branches.length,
                  itemBuilder: (context, index) {
                    final branch = branches[index];
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
                            color: const Color(0xFF034C36),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Icon(
                            Icons.church,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          branch['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF034C36),
                          ),
                        ),
                        subtitle: Text(
                          branch['location'],
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildInfoRow(Icons.person, 'Pastor', branch['pastor']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.group, 'Members', '${branch['members']} members'),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.calendar_today, 'Established', branch['established']),
                                const SizedBox(height: 8),
                                _buildInfoRow(Icons.phone, 'Contact', branch['phone']),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        _showContactDialog(context, branch);
                                      },
                                      icon: const Icon(Icons.contact_phone, size: 16),
                                      label: const Text('Contact'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF034C36),
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

  void _showContactDialog(BuildContext context, Map<String, dynamic> branch) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(branch['name']),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoRow(Icons.person, 'Pastor', branch['pastor']),
              const SizedBox(height: 8),
              _buildInfoRow(Icons.location_on, 'Location', branch['location']),
              const SizedBox(height: 8),
              _buildInfoRow(Icons.phone, 'Phone', branch['phone']),
              const SizedBox(height: 8),
              _buildInfoRow(Icons.group, 'Members', '${branch['members']} members'),
            ],
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
}