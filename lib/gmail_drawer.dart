import 'package:flutter/material.dart';

// Widget représentant le Drawer façon Gmail
class GmailDrawer extends StatelessWidget {
  const GmailDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // Le container permet d'ajouter un fond ou un style ou ce qu'on veut sur le design
        child: ListView(
          // ListView permet de scroller dans le Drawer
          children: [
            // En-tête du Drawer (logo,menu,titre)
            SizedBox(
              height: 80, // hauteur du header
              child: DrawerHeader(
                // Le DrawerHeader c'est l'entête du Drawer
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Logo Gmail 
                    Image.asset("assets/images/logo_gmail.jpg"),

                    // Icône menu permettant de fermer le Drawer
                    IconButton(
                      icon: Icon(Icons.menu, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context); // ferme le Drawer
                      },
                    ),

                    // Texte "Gmail" stylisé
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

            // Bouton "Nouveau message" stylisé
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30), // coins arrondis
              ),
              child: ListTile(
                leading: const Icon(Icons.edit, color: Colors.grey),
                title: const Text("Nouveau message"),
                onTap: () {
                  // Action pour écrire un nouveau mail
                },
              ),
            ),

            // Boîte de réception et le nombre de mails non lus
            ListTile(
              leading: const Icon(Icons.inbox, color: Colors.grey),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "1190",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: const Text("Boîte de réception"),
            ),

            // Messages suivis 

            ListTile(
              leading: const Icon(Icons.star_border, color: Colors.grey),
              title: const Text("Messages suivis"),
            ),
            // En attente
            ListTile(
              leading: const Icon(Icons.schedule, color: Colors.grey),
              title: const Text("En attente"),
            ),
            // Messages envoyés
            ListTile(
              leading: const Icon(Icons.send, color: Colors.grey),
              title: const Text("Messages envoyés"),
            ),

            // Brouillons avec badge vert
            ListTile(
              leading: const Icon(Icons.inbox, color: Colors.grey),
              trailing: Container(
                //pour les espacement au niveau du box de message non lu
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "12",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: const Text("Brouillons"),
            ),

            ListTile(
              leading: const Icon(Icons.shopping_cart, color: Colors.grey),
              title: const Text("Achats"),
            ),

            // Important
            ListTile(
              leading: Icon(Icons.label_important, color: Colors.grey),
              title: Text("Important"),
            ),

            // Planifié
            ListTile(
              leading: Icon(Icons.schedule, color: Colors.grey),
              title: Text("Planifié"),
            ),

            // Tous les messages
            ListTile(
              leading: Icon(Icons.all_inbox, color: Colors.grey),
              title: Text("Tous les messages"),
            ),

            // Spam
            ListTile(
              leading: Icon(Icons.report_gmailerrorred, color: Colors.grey),
              title: Text("Spam"),
            ),

            // Corbeille
            ListTile(
              leading: const Icon(Icons.delete_outline, color: Colors.grey),
              title: const Text("Corbeille"),
            ),

            // Gérer les abonnements
            ListTile(
              leading: Icon(Icons.subscriptions, color: Colors.grey),
              title: Text("Gérer les abonnements"),
            ),

            // Corbeille 
            ListTile(
              leading: Icon(Icons.label, color: Colors.grey),
              title: Text("Gérer les libellés"),
            ),
          ],
        ),
      ),
    );
  }
}
