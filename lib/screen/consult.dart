import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class ConsultScreen extends StatefulWidget {
  const ConsultScreen({super.key});

  @override
  State<ConsultScreen> createState() => _ConsultScreenState();
}

class _ConsultScreenState extends State<ConsultScreen> {

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
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: LayoutBuilder(
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
          child: Image.asset(
            'assets/images/flexible.jpg',
            height: size.height * 1,
            width: double.infinity,
            fit: BoxFit.cover,
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
              : Image.asset(
                'assets/images/flexible.jpg',
                  height: size.height * 0.4,
                  width: size.width,
                  fit: BoxFit.cover,
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
                          'READY TO CONSULT? Contact us by sending us a message.',
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
                              
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
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
                                                                        'Book Consultation',
                                                                        style: TextStyle(
                                                                          fontSize: 13,
                                                                          color: Color(0xffffffff),
                                                                          fontWeight: FontWeight.bold,
                                                                        ),
                                                                      ),
                                                        ),
                                        ),
                                                              SizedBox(width: size.width * 0.16),

                                                      Expanded(
                                                        child: ElevatedButton(
                                                                      onPressed: () {
                                                                        //context.go('/Our_Services');
                                                                          context.go('/home');
                                                                      },
                                                                      style: ElevatedButton.styleFrom(
                                                                        side: const BorderSide(
                                                                          width: 0.6
                                                                        ),
                                                                         shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(1),
                                                                    ),
                                                                        fixedSize: const Size(170, 45),
                                                                        backgroundColor: const Color(0xffffffff),
                                                                      ),
                                                                      child: const Text(
                                                                        'Return Home',
                                                                        style: TextStyle(
                                                                          fontSize: 13,
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.bold,
                                                                        ),
                                                                      ),
                                                        ),
                                                      ),
                                      ],
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
                        'READY TO CONSULT? Contact us by sending us a message.',
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
                              'Book Consultation',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                                                  ), 
                                ), 
                                 const SizedBox(
                                height: 20),
                                Center(
                                  child: ElevatedButton(
                                                                        onPressed: () {
                                                                          //context.go('/Our_Services');
                                                                          context.go('/home');
                                                                        },
                                                                        style: ElevatedButton.styleFrom(
                                                                          side: const BorderSide(
                                                                            width: 0.6
                                                                          ),
                                                                           shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(1),
                                                                      ),
                                                                          fixedSize: const Size(350, 45),
                                                                          backgroundColor: const Color(0xffffffff),
                                                                        ),
                                                                        child: const Text(
                                                                          'Return Home',
                                                                          style: TextStyle(
                                                                            fontSize: 13,
                                                                            color: Colors.black,
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

  // Login Button
  // Widget loginButton() {
  //   return SizedBox(
  //     width: double.infinity,
  //     height: 55,
  //     child: ElevatedButton(
  //       style: ButtonStyle(
  //         backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
  //         shape: MaterialStateProperty.all(
  //           RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(15),
  //           ),
  //         ),
  //       ),
  //       onPressed: () {
  //         // Validate returns true if the form is valid, or false otherwise.
  //         if (_formKey.currentState!.validate()) {
  //           // ... Navigate To your Home Page
  //         }
  //       },
  //       child: const Text('Login'),
  //     ),
  //   );
  // }
}

// class SimpleUIController extends GetxController {
//   RxBool isObscure = true.obs;

//   isObscureActive() {
//     isObscure.value = !isObscure.value;
//   }
// }