import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),

              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon((Icons.search), color: Colors.grey[600]),
              hintText: "Buscar no Mercado Livre",
              border: OutlineInputBorder(
                borderRadius: .circular(80),
                borderSide: .none,
              ),
              contentPadding: .symmetric(vertical: 8, horizontal: 10),
            ),
          ),
        ),
      ),
    );
  }
}
