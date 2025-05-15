import 'package:flutter/material.dart';
import 'package:draw/pages/contact.dart';
import 'package:draw/pages/parametre.dart';
import 'package:draw/pages/notifications.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EXAMPLE DRAWER",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25,
          color: const Color.fromARGB(255, 14, 111, 17)),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      //endDrawer: Drawer(),

      drawer: SizedBox(
        width: 500,
        child: Drawer(
          backgroundColor: const Color.fromARGB(255, 244, 235, 161),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("img/profile.jpg"),
                   // backgroundImage: AssetImage("img/ghost.jpg"),
                  ),
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 65, 65)),
                  accountName: Text("Boris Van"),
                  accountEmail: Text("borisvian@gmail.com")
              ),
              ExpansionTile(
                title: Text("Profil"),leading:Icon(Icons.people) ,
              children: [
                ListTile(title: Text("Modifier Ville"), leading: Icon(Icons.location_city),),
                ListTile(title: Text("Modifier Mot de Passe"), leading: Icon(Icons.password),),
              ],
              ),
              ListTile(
                title: Text("Groupes"), // titre
                leading: Icon(Icons.group), // icone à gauche
                trailing: PopupMenuButton(  // sous-menu
                  icon: Icon(Icons.arrow_right),
                 itemBuilder:                // constructeur
                     (context)=>[
                   PopupMenuItem(            // 1er elements du sous-menu
                       child: Row(
                         children: [
                           Icon(Icons.group_add_rounded),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Groupes publique"),
                           ) ],)),
                   PopupMenuItem(            // 2eme elements du sous-menu
                       child: Row(
                           children: [
                             Icon(Icons.group_work),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text("Groupe privés"),
                             )])),
                 ],),
              ),

              ListTile(title: Text("Contacts"), leading: Icon(Icons.phone),
              onTap: ()
              {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Contact()));
              },
              ),
              ListTile(title: Text("Paramètres"), leading: Icon(Icons.settings),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Parametre()));
              },
              ),
              ListTile(
                title: Text("Notifications"),
                leading: Icon(Icons.notifications),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Notifications()));
                },
              ),
              Divider(),
              ListTile(title: Text("F.A.Q"), leading: Icon(Icons.question_answer),),
              ListTile(title: Text("Aide"), leading: Icon(Icons.help),)
            ],
          ),
        ),
      ),
    );
  }
}
