import 'package:flutter/material.dart';

class GmailDrawer extends StatelessWidget {
  const GmailDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
                height: 80,
                child: DrawerHeader(
                decoration: BoxDecoration(
                  
                ),
          child : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset("assets/images/logo_gmail.jpg"),
                    IconButton(
                    icon: Icon(Icons.menu, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context); // ferme le drawer
                    },
                  ),
                    Text(
                      'Gmail',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
             borderRadius: BorderRadius.circular(30),
            ),
            child: ListTile(
              leading: const Icon(Icons.edit, color: Colors.grey),
              title: const Text("Nouveau message"),
              onTap: () {
                // Action à définir pour la création d'un nouveau message
              },
            ),
          ),
            
          ListTile(
            leading: const Icon(Icons.inbox, color: Colors.grey),
            title: const Text("Boîte de réception"),
          ),

          ListTile(
            leading: const Icon(Icons.star_border, color: Colors.grey),
            title: const Text("Messages suivis"),
          ),

          ListTile(
            leading: const Icon(Icons.schedule, color: Colors.grey),
            title: const Text("En attente"),
          ),

          ListTile(
            leading: const Icon(Icons.send, color: Colors.grey),
            title: const Text("Messages envoyés"),
          ),

          ListTile(
            leading: const Icon(Icons.drafts, color: Colors.grey),
            title: const Text("Brouillons"),
          ),

          ListTile(
            leading: const Icon(Icons.shopping_cart, color: Colors.grey),
            title: const Text("Achats"),
          ),

          ListTile(
            leading: const Icon(Icons.delete_outline, color: Colors.grey),
            title: const Text("Corbeille"),
          ),
        ],
      ),
    );
  }
}
