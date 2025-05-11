import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  
   
   TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        color: Colors.white,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return _buildLargeScreen(size);
            } else {
              return _buildSmallScreen(size);
            }
          },
        ),
      ),
    );
  }

  /// For large screens
  Widget _buildLargeScreen(
    Size size,
  ) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Stack(
            children: [
              ColorFiltered(
                 colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.7), // adjust opacity here
          BlendMode.darken,
        ),
                child: Image.asset(
                  'assets/images/call2.jpg',
                  height: size.height * 1,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  
                ),
              ),
              Positioned(
            left: 90,
            top: 130,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Mulish',
         fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              "We'd Love to Hear From You...",
              speed: const Duration(milliseconds: 100),
              cursor: '|'
            ),
          ],
          totalRepeatCount: 1,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),
              
                const SizedBox(height: 20),

               const Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 17,
 color: Color(0xff32CD32),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                                const SizedBox(height: 10),

                const Text(
                  '4245 N Central Expy, #490. Dallas TX 75205',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 const SizedBox(height: 20),

               const Text(
                  'Phone',
                  style: TextStyle(
                    fontSize: 17,
 color: Color(0xff32CD32),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                                const SizedBox(height: 10),

                const Text(
                  '469-544-6914',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 const SizedBox(height: 20),

               const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 17,
 color: Color(0xff32CD32),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                                const SizedBox(height: 10),

                const Text(
                  'Operations@solevadaa.com',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),
               
              ],
            ),
          ),
            ],
          ),
        ),
        SizedBox(width: size.width * 0.06),
        Expanded(
          flex: 5,
          child: _buildMainBody(
            size,
          ),
        ),
      ],
    );
  }

  /// For Small screens
  Widget _buildSmallScreen(
    Size size,
  ) {
    return Center(
      child: _buildMainBody(
        size,
      ),
    );
  }

  /// Main Body
  Widget _buildMainBody(
    Size size,
  ) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            size.width > 600 ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          size.width > 600
              ? Container()
              : Stack(
                children: [
                  Image.asset(
                    'assets/images/call2.jpg',
                      height: size.height * 0.8,
                      width: size.width,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
            left: 90,
            top: 130,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Mulish',
         fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              "We'd Love to Hear From You...",
              speed: const Duration(milliseconds: 100),
              cursor: '|'
            ),
          ],
          totalRepeatCount: 1,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),
              
                const SizedBox(height: 20),

               const Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 17,
 color: Color(0xff32CD32),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                                const SizedBox(height: 10),

                const Text(
                  '4245 N Central Expy, #490. Dallas TX 75205',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 const SizedBox(height: 20),

               const Text(
                  'Phone',
                  style: TextStyle(
                    fontSize: 17,
 color: Color(0xff32CD32),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                                const SizedBox(height: 10),

                const Text(
                  '469-544-6914',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 const SizedBox(height: 20),

               const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 17,
 color: Color(0xff32CD32),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                                const SizedBox(height: 10),

                const Text(
                  'Operations@solevadaa.com',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),
               
              ],
            ),
          ),
                ],
              ),
          SizedBox(
            height: size.height * 0.03,
          ),
                 size.width > 600
      ?
         Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.center,
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                         SizedBox(
            height: size.height * 0.07,
          ),
                        const Text(
                          'Any Challenge? Contact us by sending us a message.',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight:
                                FontWeight.w700,
                            color:
                                Color(0xff32CD32),
                          ),
                          textAlign:
                              TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 500,
                          width: 1200,
                          margin:
                              const EdgeInsets.all(
                                  15),
                          padding:
                              const EdgeInsets.all(
                                  25),
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Background color
                            borderRadius:
                                BorderRadius
                                    .circular(10),
         
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(
                                        0.5), // Light shadow
                                blurRadius: 3,
                                offset:
                                    const Offset(
                                        0, 4),
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              children: [
                                const SizedBox(
                                    height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceEvenly,
                                  children: [
                                    Expanded(
                                      child:
                                          TextFormField(
                                        decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                              left:
                                                  10,
                                              top: 5,
                                              bottom:
                                                  5,
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintStyle: TextStyle(
                                              color: Colors
                                                  .grey,
                                              fontWeight:
                                                  FontWeight.w400,
                                            ),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                              color: Colors
                                                  .grey,
                                              width:
                                                  0.5,
                                            )),
                                            hintText: 'First Name'),
                                      ),
                                    ),
                                    const SizedBox(
                                        width: 15),
                                    Expanded(
                                        child:
                                            TextFormField(
                                      decoration:
                                          const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets
                                                      .only(
                                                left:
                                                    10,
                                                top:
                                                    5,
                                                bottom:
                                                    5,
                                              ),
                                              filled:
                                                  true,
                                              fillColor:
                                                  Colors
                                                      .white,
                                              hintStyle:
                                                  TextStyle(
                                                color:
                                                    Colors.grey,
                                                fontWeight:
                                                    FontWeight.w400,
                                              ),
                                              border:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide(
                                                color:
                                                    Colors.grey,
                                                width:
                                                    0.5,
                                              )),
                                              hintText:
                                                  'Last Name'),
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                    height: 30),
                                TextFormField(
                                  decoration:
                                      const InputDecoration(
                                          contentPadding:
                                              EdgeInsets
                                                  .only(
                                            left: 10,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          filled:
                                              true,
                                          fillColor:
                                              Colors
                                                  .white,
                                          hintStyle:
                                              TextStyle(
                                            color: Colors
                                                .grey,
                                            fontWeight:
                                                FontWeight
                                                    .w400,
                                          ),
                                          border:
                                              OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(
                                            color: Colors
                                                .grey,
                                            width:
                                                0.5,
                                          )),
                                          hintText:
                                              'Message'),
                                ),
                                const SizedBox(
                                    height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceEvenly,
                                  children: [
                                    Expanded(
                                      child:
                                          TextFormField(
                                        decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                              left:
                                                  10,
                                              top: 5,
                                              bottom:
                                                  5,
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintStyle: TextStyle(
                                              color: Colors
                                                  .grey,
                                              fontWeight:
                                                  FontWeight.w400,
                                            ),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                              color: Colors
                                                  .grey,
                                              width:
                                                  0.5,
                                            )),
                                            hintText: 'Email'),
                                      ),
                                    ),
                                    const SizedBox(
                                        width: 15),
                                    Expanded(
                                        child:
                                            TextFormField(
                                      decoration:
                                          const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets
                                                      .only(
                                                left:
                                                    10,
                                                top:
                                                    5,
                                                bottom:
                                                    5,
                                              ),
                                              filled:
                                                  true,
                                              fillColor:
                                                  Colors
                                                      .white,
                                              hintStyle:
                                                  TextStyle(
                                                color:
                                                    Colors.grey,
                                                fontWeight:
                                                    FontWeight.w400,
                                              ),
                                              border:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide(
                                                color:
                                                    Colors.grey,
                                                width:
                                                    0.5,
                                              )),
                                              hintText:
                                                  'Mobile Phone'),
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                    height: 50),
                              
                                    ElevatedButton(
                                                                onPressed: () {
                                                                  //context.go('/Our_Services');
                                                                  //context.go('/whatsapp');
                                                                },
                                                                style: ElevatedButton.styleFrom(
                                                                   shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(1),
                                                              ),
                                                                  fixedSize: const Size(170, 45),
                                                                  backgroundColor: const Color(0xff4779A3),
                                                                ),
                                                                child: const Text(
                                                                  'Send Message',
                                                                  style: TextStyle(
                                                                    fontSize: 13,
                                                                    color: Color(0xffffffff),
                                                                    fontWeight: FontWeight.bold,
                                                                  ),
                                                                ),
                                                  ), 
                              ],
                            ),
                          ),
                        ),
                      ],
                    ) : Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Any Challenge? Contact us by sending us a message.',
                        style: TextStyle(
                          fontSize: 20,
                          color:
                              Color(0xff32CD32),
                        ),
                        textAlign:
                            TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 650,
                        width: 700,
                        margin:
                            const EdgeInsets.all(
                                15),
                        padding:
                            const EdgeInsets.all(
                                15),
                        decoration: BoxDecoration(
                          color: Colors
                              .white, // Background color
                          borderRadius:
                              BorderRadius
                                  .circular(10),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(
                                      0.5), // Light shadow
                              blurRadius: 3,
                              offset:
                                  const Offset(
                                      0, 4),
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child:  Column(
                          children: [
                             const SizedBox(
                                height: 20),
                                 TextFormField(
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                          left:
                                              10,
                                          top: 5,
                                          bottom:
                                              5,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintStyle: TextStyle(
                                          color: Colors
                                              .grey,
                                          fontWeight:
                                              FontWeight.w400,
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                          color: Colors
                                              .grey,
                                          width:
                                              0.5,
                                        )),
                                        hintText: 'First Name'),
                                  ), 
                                  const SizedBox(
                                height: 20),
                                   TextFormField(
                                  decoration:
                                      const InputDecoration(
                                          contentPadding:
                                              EdgeInsets
                                                  .only(
                                            left:
                                                10,
                                            top:
                                                5,
                                            bottom:
                                                5,
                                          ),
                                          filled:
                                              true,
                                          fillColor:
                                              Colors
                                                  .white,
                                          hintStyle:
                                              TextStyle(
                                            color:
                                                Colors.grey,
                                            fontWeight:
                                                FontWeight.w400,
                                          ),
                                          border:
                                              OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(
                                            color:
                                                Colors.grey,
                                            width:
                                                0.5,
                                          )),
                                          hintText:
                                              'Last Name'),
                                ),
                                 const SizedBox(
                                height: 20),
                                   TextFormField(
                                  decoration:
                                      const InputDecoration(
                                          contentPadding:
                                              EdgeInsets
                                                  .only(
                                            left:
                                                10,
                                            top:
                                                5,
                                            bottom:
                                                5,
                                          ),
                                          filled:
                                              true,
                                          fillColor:
                                              Colors
                                                  .white,
                                          hintStyle:
                                              TextStyle(
                                            color:
                                                Colors.grey,
                                            fontWeight:
                                                FontWeight.w400,
                                          ),
                                          border:
                                              OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(
                                            color:
                                                Colors.grey,
                                            width:
                                                0.5,
                                          )),
                                          hintText:
                                              'Message'),
                                ),
                                const SizedBox(
                                height: 20),
                                   TextFormField(
                                  decoration:
                                      const InputDecoration(
                                          contentPadding:
                                              EdgeInsets
                                                  .only(
                                            left:
                                                10,
                                            top:
                                                5,
                                            bottom:
                                                5,
                                          ),
                                          filled:
                                              true,
                                          fillColor:
                                              Colors
                                                  .white,
                                          hintStyle:
                                              TextStyle(
                                            color:
                                                Colors.grey,
                                            fontWeight:
                                                FontWeight.w400,
                                          ),
                                          border:
                                              OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(
                                            color:
                                                Colors.grey,
                                            width:
                                                0.5,
                                          )),
                                          hintText:
                                              'Email'),
                                ),
                                const SizedBox(
                                height: 20),
                                   TextFormField(
                                  decoration:
                                      const InputDecoration(
                                          contentPadding:
                                              EdgeInsets
                                                  .only(
                                            left:
                                                10,
                                            top:
                                                5,
                                            bottom:
                                                5,
                                          ),
                                          filled:
                                              true,
                                          fillColor:
                                              Colors
                                                  .white,
                                          hintStyle:
                                              TextStyle(
                                            color:
                                                Colors.grey,
                                            fontWeight:
                                                FontWeight.w400,
                                          ),
                                          border:
                                              OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(
                                            color:
                                                Colors.grey,
                                            width:
                                                0.5,
                                          )),
                                          hintText:
                                              'Mobile Phone'),
                                ),
                                 const SizedBox(
                                height: 20),
                           
                            
                         
                             const SizedBox(
                                height: 30),
                                Center(
                                  child:   ElevatedButton(
                            onPressed: () {
                              //context.go('/Our_Services');
                              //context.go('/whatsapp');
                            },
                            style: ElevatedButton.styleFrom(
                               shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                              fixedSize: const Size(350, 45),
                              backgroundColor: const Color(0xff4779A3),
                            ),
                            child: const Text(
                              'Send Message',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                                                  ), 
                                ), 
                               
                          ],
                        ),
                      ),
                    ],
                  ),        
        ],
      ),
    );
  }
}

class Blogs extends StatefulWidget {
  const Blogs({super.key});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
                  style: const TextStyle(
          fontFamily: 'Mulish',
                   fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                  child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'No Recent Article...',
              speed: const Duration(milliseconds: 100),
              cursor: '|'
            ),
          ],
          totalRepeatCount: 2,
          repeatForever: true,
          pause: const Duration(milliseconds: 10000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
                  ),
                ),
    );
  }
}