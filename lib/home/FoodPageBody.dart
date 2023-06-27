import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        child: PageView.builder(
            controller: PageController(viewportFraction: 0.85),
            itemCount: 5,
            itemBuilder: (context, position) {
              return Stack(
                children: [
                  Container(
                    height: 220,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80"))),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 140,
                        margin:
                            EdgeInsets.only(left: 30, right: 30, bottom: 15),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFe8e8e8),
                                blurRadius: 5,
                                offset: Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(5, 0),
                              )
                            ]),
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Chinese Side",
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Wrap(
                                      children: List.generate(
                                          5,
                                          (index) => const Icon(
                                                Icons.star,
                                                size: 18,
                                                color: Colors.blue,
                                              )),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "4.5",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      "1287 comments",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          color: Colors.amber,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          color: Colors.amber,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          color: Colors.amber,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        const Text(
                                          "4.5",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      )),
                ],
              );
            }));
  }
}
