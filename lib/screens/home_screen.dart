import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50,),
          const Text("Most played games on twitch", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontFamily: "Tahoma"
          ),),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15, right: 30),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFF3F1FF)
            ),
            child: const Text("Find the hottest games to play or stream today, March 11 2023",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
            ),
          ),

          const SizedBox(height: 25,),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [

                //LIST OF GAMES ROWS today..
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/news3.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Just Chatting", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("367K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/news2.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("VALORANT", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("154K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/news1.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("League of Legends", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("147K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/news4.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Grand Theft Auto V", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("135K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/us_flag.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Minecraft", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("101K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/britainflag.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dota 2", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("77.2K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/gameplay8.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Counter-Strike: \nGlobal Offensive", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("70.9K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/gameplay9.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Apex Legends", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("52.6K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/euflag.png"
                                )
                            )
                        )
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fortnite", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        const SizedBox(height: 10,),
                        Row(children: [
                          const Icon(Icons.remove_red_eye_rounded,),
                          const SizedBox(width: 5,),
                          const Text("48.1K", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],)
                      ],
                    )
                  ],
                )
              ],
            ),
          )






        ],

      ),
    );
  }
}
