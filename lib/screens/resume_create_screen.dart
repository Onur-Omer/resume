import 'package:flutter/material.dart';
import 'package:resume/models/category_of_resume.dart';
import 'package:resume/screens/login_screen.dart';

class ResumeCreateScreen extends StatelessWidget {
  final List<String> entries = <String>['Contact', 'B', 'C'];
  var listOfCategory = [
    CategoryOfResume(Icons.person, "Personel Detail", LoginScreen()),
    CategoryOfResume(Icons.school, "Education", LoginScreen()),
    CategoryOfResume(Icons.article, "About You", LoginScreen()),
    CategoryOfResume(Icons.pending_actions, "Experiance", LoginScreen()),
    CategoryOfResume(Icons.explore, "Skills", LoginScreen()),
    CategoryOfResume(Icons.language, "Language", LoginScreen()),
    CategoryOfResume(Icons.file_copy, "Projects", LoginScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFE2EDEB),
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Color(0xFFE2EDEB),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: ListView.builder(
            itemCount: listOfCategory.length,
            itemBuilder: (BuildContext context, int index) {
              return buildCategoryListTile(
                context: context,
                leadingIcon: listOfCategory[index].leadingIcon,
                text: listOfCategory[index].text,
                routeScreen: listOfCategory[index].routeScreen,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Create custom",
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }

  buildCategoryListTile({context, leadingIcon, text, routeScreen}) {
    return Card(
      child: ListTile(
        minVerticalPadding: 20,
        leading: Icon(
          leadingIcon,
          color: Colors.green,
        ),
        title: Text(text),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => routeScreen));
        },
      ),
    );
  }
}
