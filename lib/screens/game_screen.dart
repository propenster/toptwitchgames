import 'package:flutter/material.dart';
//import 'package:share_plus/share_plus.dart';
import 'package:toptwitchgames/screens/help_screen.dart';
import 'package:toptwitchgames/screens/home_screen.dart';
import 'package:toptwitchgames/screens/premium_screen.dart';
import 'package:toptwitchgames/screens/setting_screen.dart';

//import 'package:mailto/mailto.dart';
import 'my_header_drawer.dart';



class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  var currentPage = DrawerSections.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage == DrawerSections.home){
      container = HomeScreen();
    }
    else if(currentPage == DrawerSections.settings){
      container = SettingScreen();
    }else if(currentPage == DrawerSections.premium){
      container = PremiumScreen();
    }else if(currentPage == DrawerSections.help){
      container = HelpScreen();
    }



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Games"),
            Row(
              children: [
                IconButton(onPressed: (){
                  print("Icon Sort is pressed");

                }, icon: new Icon(Icons.sort, )),
                IconButton(onPressed: (){
                  print("Icon Calendar is pressed");
                },
                  icon: new Icon(Icons.calendar_month, ),
                ),
              ],
            )
          ],
        ),



      ),
      body:

      ListView(

        children: [
          container
        ],
      ),

      drawer: Drawer(

        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList()
              ],
            )
          ),
        ),
      ),
    );
  }

  //MY DRAWER LIST
  Widget MyDrawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          MenuItem(1, "Top Twitch Games", Icons.gamepad,
              currentPage == DrawerSections.home ? true : false
          ),
          MenuItem(2, "Remove Ads", Icons.credit_card,
          currentPage == DrawerSections.premium ? true : false
          ),
          MenuItem(3, "Settings", Icons.settings,
              currentPage == DrawerSections.settings ? true : false
          ),
          MenuItem(4, "Rate us", Icons.thumb_up_off_alt_sharp,
              currentPage == DrawerSections.rate ? true : false
          ),

          MenuItem(5, "Share with friends", Icons.share,
              currentPage == DrawerSections.share ? true : false
          ),
          Divider(),
          MenuItem(6, "Get new version", Icons.info,
              currentPage == DrawerSections.newversion ? true : false
          ),
          MenuItem(7, "Feedback", Icons.feedback,
              currentPage == DrawerSections.feedback ? true : false
          ),
          MenuItem(8, "Help", Icons.help_outlined,
              currentPage == DrawerSections.help ? true : false
          ),


        ],
      ),
    );
  }

  Widget MenuItem(int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: (){
          print("Drawer menu item with index ${id} was tapped");
          if(id == 1 || id == 2 || id == 3 || id == 8){
            Navigator.pop(context);
          }else{
            TreatNonViewMenuItem(id);
          }

          setState(() {
            if(id == 1){
              currentPage = DrawerSections.home;

            }else if(id == 2){
              currentPage = DrawerSections.premium;
            }

            else if(id == 3){
              currentPage = DrawerSections.settings;
            }
            else if(id == 4){
              //currentPage = DrawerSections.rate;
              TreatNonViewMenuItem(id);
            }

            else if(id == 5){
              //currentPage = DrawerSections.share;
              TreatNonViewMenuItem(id);

            }

            else if(id == 6){
              //currentPage = DrawerSections.newversion;
              TreatNonViewMenuItem(id);

            }

            else if(id == 7){
              //currentPage = DrawerSections.feedback;
              TreatNonViewMenuItem(id);

            }

            else if(id == 8){
              currentPage = DrawerSections.help;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon
                , size: 20,
                    color: Colors.black,
                ),

              ),

              Expanded(
                flex: 3,
                child: Text(title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                )
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  void TreatNonViewMenuItem(int id) {
  print("The Menu Item clicked that's NOnView Type is index ${id}");
  if(id == 7){
    // final mailToLink = MailTo(
    //   to: ['support@rockittech.dev'],
    //   cc: ['help@rockittech.dev'],
    //   subject: 'Feedback on TopTwitchGamesDaily',
    //   body: ''
    // );
    // await launchUrl('$mailToLink');
    _sendEmail();
  }
  else if(id == 5){
    //share
    //Share.share('check out this cool app that posts top streamed and watched games on Twitch daily http://play.google.com/store/apps/details?id=com.propenster.apps.toptwitchgamesdaily'!, subject: 'Check out this cool twitch games app!');
    print("share here");



  }
  }

  void _sendEmail(){
    // final Uri emailLaunchUri = Uri(
    //   scheme: 'mailto',
    //   path: 'support@rockittech.dev',
    //   queryParameters: {
    //     'subject': 'Feedback on TopTwitchGamesDaily',
    //     'body': ''
    //   },
    // );
    print("Sending email ... ");
    //launchUrl(emailLaunchUri);
  }


}


enum DrawerSections{
  home,
  premium,
  settings,
  rate,
  share,
  newversion,
  feedback,
  help

}