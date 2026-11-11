import 'package:flutter/material.dart';
import '../models/destination.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;
  final VoidCallback onTap;

  const DestinationCard({
    Key? key,
    required this.destination,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                destination.imageUrl,
                height: 150,
                fit: BoxFit.cover,
                // Placeholder caso a imagem falhe
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 150,
                  color: Colors.grey[300],
                  child: const Icon(Icons.broken_image, size: 50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 16, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(destination.location, style: const TextStyle(color: Colors.grey)),
                      const Spacer(),
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      Text(destination.formattedRating),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}