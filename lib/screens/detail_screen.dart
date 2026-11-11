import 'package:flutter/material.dart';
import '../models/destination.dart';

class DetailScreen extends StatelessWidget {
  final Destination destination;

  const DetailScreen({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              destination.imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        destination.name,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          Text(
                            destination.formattedRating,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.blue),
                      const SizedBox(width: 4),
                      Text(
                        destination.location,
                        style: const TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Sobre',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    destination.description,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {
              // Lógica de agendamento/reserva
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Reserva iniciada!')),
              );
            },
            child: const Text('Reservar Viagem', style: TextStyle(fontSize: 18)),
          ),
        ),
      ),
    );
  }
}