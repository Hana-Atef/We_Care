import 'package:flutter/material.dart';
import 'homePages/diagnosis_page.dart';
import 'homePages/medical_hestory.dart';


class navBar extends StatelessWidget {
  const navBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('user Name', style: TextStyle(color: Colors.black, fontSize: 15),),
            accountEmail: const Text('User Email', style: TextStyle(color: Colors.black, ),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/images/profile.jpg', width: 200, height: 200,fit: BoxFit.fill,),),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/profile.jpg"),fit: BoxFit.fill),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('السجل المرضي'),
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.medical_services),
            title: const Text('التشخيص'),
               onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => diagnosisPage())));
            },
          ),
          ListTile(
            leading: const Icon(Icons.medication),
            title: const Text('التدريبات'),
                onTap: () {
              Navigator.pushNamed(context, "ex1");
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('الخروج'),
               onTap: () {
                 Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
